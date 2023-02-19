<?php

    function login(){
        

        require("model/login.php");
        if(isGoodLogin($_POST['email'], $_POST['mdp'])){
            $_SESSION['profile']['email'] = $_POST['email'];
        }
        header("Location: index.php");
        die();
    }

    function createAccount(){
        require("model/login.php");
        if(isset($_POST['email'])&&isset($_POST['mdp'])&&isset($_POST['prenom'])&&isset($_POST['nom'])){
            newAccount($_POST['email'], $_POST['mdp'], $_POST['nom'], $_POST['prenom']);
            $_SESSION['profile']['email'] = $_POST['email'];
            header("Location: index.php");
        }
        else{
            require("view/user/signup.tpl");
        }
        die();
    }


    function disconnect(){
        $_SESSION['profile'] = array();
        header("Location: index.php");
        die();
    }


?>