<?php

    function resultats(){
        require("view/sondage/resultats.tpl");
    }

    function questions(){
        require("view/sondage/questions.tpl");
    }

    function recupNomAliments(){
        require("model/recupNomAliments.php");
    }

?>