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
        $msg = "";
        if(isset($_POST['email'])&&isset($_POST['mdp'])&&isset($_POST['prenom'])&&isset($_POST['nom'])){
            if(estValide($_POST['email'], $_POST['mdp'], $_POST['nom'], $_POST['prenom'])){
                newAccount($_POST['email'], $_POST['mdp'], $_POST['nom'], $_POST['prenom']);
                $_SESSION['profile']['email'] = $_POST['email'];
                header("Location: index.php");
            }
            else{
                if(dejaPris($_POST['email']))
                    $msg = "Cet email est deja pris";
                else
                    $msg = "Veuillez remplir les champs";
            }
        }
        require("view/user/signup.tpl");
        die();
    }


    function disconnect(){
        $_SESSION['profile'] = array();
        header("Location: index.php");
        die();
    }


?>