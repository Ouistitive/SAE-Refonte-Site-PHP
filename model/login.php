<?php

    function isGoodLogin($email, $mdp){
        require ("connectBD.php");
        $sql = "SELECT * FROM comptes WHERE email='$email';";
        $res = $pdo->prepare($sql);
        $res->execute();
        if($res->rowCount() > 0) {
            $data = $res->fetchAll(PDO::FETCH_ASSOC);
            if (password_verify($mdp, $data[0]["mdp"])){
                //var_dump($profil) ; die();
                return true;
            }
            else {
                return false;
            }
        }
    }

    function dejaPris($email){
        try{
            require("connectBD.php");
            $sql = "SELECT * FROM Comptes WHERE email=:email;";
            $res = $pdo->prepare($sql);
            $res->bindParam('email', $email, PDO::PARAM_STR);
            $res->execute();
            return ($res->rowCount() == 0) ;
        }
        catch(Exception $e) {
            echo 'Exception -> ';
            var_dump($e->getMessage());
        }
    }

    function estValide($email, $mdp, $nom, $prenom){
        if($_POST['email']!=""&&$_POST['mdp']!=""&&$_POST['prenom']!=""&&$_POST['nom']!=""){
            return dejaPris($email);
        }
        return false;

    }

    function newAccount($email, $mdp, $nom, $prenom){
        $pass = password_hash($mdp, PASSWORD_DEFAULT);
        try{
            require("connectBD.php");
            $sql = "INSERT INTO Comptes(email, nom, prenom, mdp) VALUES(:email,:nom,:prenom,:pass);";
            $res = $pdo->prepare($sql);
            $res->bindParam('email', $email, PDO::PARAM_STR);
            $res->bindParam('pass', $pass, PDO::PARAM_STR);
            $res->bindParam('nom', $nom, PDO::PARAM_STR);
            $res->bindParam('prenom', $prenom, PDO::PARAM_STR);
            $res->execute();
        }
        catch(Exception $e) {
            echo 'Exception -> ';
            var_dump($e->getMessage());
        }
    }



?>