<?php

function db_connect() {
    //connection à la base de données
    $host = 'localhost';
    $user = 'root';
    $password = 'password';
    $db = 'okistore';

    try {
        $connection = new PDO("mysql:host=$host;dbname=$db", $user, $password, array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'));
        //repmettre la gestion d'exeption
        $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOExeption $e) {
        echo 'Erreur de connecion!!! : ' . $e->getMessage() . '<br>';
        exit();
    }
    return $connection;
}

function exec_query($query, $connection) {
    try {
        $result = $connection->query($query); //obj PDO
        $res_array = $result->fetchAll(PDO::FETCH_ASSOC);
        return $res_array;
    } catch (PDOException $ex) {
        echo $ex->getMessage();
        exit();
    }
}

function get_products_as_array($connection, $currentPage, $perPage) {
    // selectionner tt les produits de la bd produits
    // et retourner sous la forme d'un tableau
    $query = "SELECT id_prod, title, price, img FROM products LIMIT "
            . (($currentPage - 1) * $perPage) . ",$perPage";
    return exec_query($query, $connection);
}

function get_products_by_cat($cat, $connection, $currentPage, $perPage) {
    // on recupere la categoie qui a été selectioné dans la barre de navigation par l'utilisateur
    $query = "SELECT id_prod, title, price, img, categorie FROM products 
        WHERE categorie='$cat' LIMIT " . (($currentPage - 1) * $perPage) . ",$perPage";
    return exec_query($query, $connection);
}

function get_categories($connection) {
    //on selectionne les categories de la base de données pour crées la navigation
    $query = 'SELECT * FROM categories';
    return exec_query($query, $connection);
}

function get_product($id_prod, $connection) {
    $query = "SELECT * FROM products WHERE id_prod = '$id_prod'";
    try {
        $result = $connection->query($query);
        $row = $result->fetch(PDO::FETCH_ASSOC);
    } catch (PDOException $ex) {
        echo $ex->getMessage();
        exit();
    }
    return $row;
}

function get_product_cart($id_prod, $connection) {
    $query = "SELECT id_prod, title, price FROM products WHERE id_prod = '$id_prod'";
    try {
        $result = $connection->query($query);
        $row = $result->fetch(PDO::FETCH_ASSOC);
    } catch (PDOException $ex) {
        echo $ex->getMessage();
        exit();
    }
    return $row;
}

function get_nb_art_all($connection) {
    $query = "SELECT COUNT(id_prod) AS nbrArt FROM products";
    $data = exec_query($query, $connection);
    $data = $data[0];   //on recupere le massif 0
    return $data['nbrArt']; //on recupere la val
}

function get_nb_art_by_cat($connection, $cat) {
    $query = "SELECT COUNT(id_prod) AS nbrArt FROM products WHERE categorie='$cat'";
    $data = exec_query($query, $connection);
    $data = $data[0];   //on recupere le massif 0
    return $data['nbrArt']; //on recupere la val
}

function check_user($connection, $login, $password) {
    //******on check si l'user existe *******
    $query = "SELECT COUNT(id_client) AS client FROM clients WHERE email = '" . $login 
            . "' AND password = '" . $password . "' AND activation = '1'";
    $data = exec_query($query, $connection);
    $data = $data[0];

    if ($data['client'] == 1)
        return true;
    else
        return false;
}

function get_username($connection, $login) {
    $query = "SELECT prenom FROM clients WHERE email = '" . $login . "'";
    $data = exec_query($query, $connection);
    return $data[0]['prenom'];
}

function email_already_exists($connection, $email) {
    $query = "SELECT email FROM clients WHERE email = '" . $email . "'";
    $data = exec_query($query, $connection);
    if (isset($data[0]['email']))
        return TRUE;
    else
        return FALSE;
}

function insert_user($connection,$activation) {
    //crypter le mot de passe
    $password = sha1($_POST['password']);
    //inserer les données du client + le code d'activation
    $query = "INSERT INTO clients(nom,prenom,adresse,code_postal,email,password,activation) " .
            "VALUES('{$_POST['surname']}','{$_POST['name']}','{$_POST['address']}'," .
            "'{$_POST['post_index']}','{$_POST['email']}','{$password}','{$activation}')";
    $connection->query($query);
}

function send_email($activation) {
    $subject    = "Confirmez votre inscription";
    $message = "Bonjour! On vous remercie pour l'inscription sur www.okistore.com \n"
            . "Votre login:    " . $_POST['email'] . "\n
            Cliquez sur le lien, pour activer votre compte :\n
            http://localhost/okiStore/activation.php?login=" . $_POST['email'] . "&code=" . $activation;
    mail($_POST['email'], $subject, $message, "Content-type:text/plane;    Charset=windows-1251\r\n"); //envoyer e-mail
}
?>
