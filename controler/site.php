<?php

    function accueil(){
        require("view/site/index.tpl");
    }

    function actualites(){
        require("view/site/actualites.tpl");
    }


    function nous_contacter(){
        require("view/site/nous_contacter.tpl");
    }

    function connexion(){
        if(isset($_SESSION['profile']['email'])){
            require("model/accountInfo.php");
            $infos = getInfos($_SESSION['profile']['email']);
            require("view/user/espace.tpl");
        }
        else{
            require("view/site/connexion.tpl");
        }
    }

?>