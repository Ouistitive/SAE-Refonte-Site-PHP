<?php

    function resultats(){
        require("model/resultat.php");
    }

    function questions(){
        require("view/sondage/questions.tpl");
    }

    function recupNomAliments(){
        require("model/recupNomAliments.php");
    }

    function insertAliments(){
        require("model/insertAliments.php");
    }

?>