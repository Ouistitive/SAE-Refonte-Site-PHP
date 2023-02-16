<?php

    function resultats(){
        require("model/resultat.php");
    }

    function questions(){
        require("model/insertAliments.php");
        if(isset($_SESSION['profile']['email'])){
            
            if(!verifierEmail($_SESSION['profile']['email'])){
                consoleLog("resultats");
                require("model/resultat.php");
                $gagnant = selectresultat();
                require("view/sondage/resultats.tpl");
            }
            else{
                consoleLog("questions");
                consoleLog(!verifierEmail($_SESSION['profile']['email']));
                afficherquestions();
            }
        }
        else {
            require("view/sondage/non_connecte.tpl");
        }
    }

    function afficherquestions(){
        $email;
        $tabAliments;
        $msg = "";
        $tabIdAlim = array();

        if(verification($email, $tabAliments)) {
            selectIdAliments($tabAliments, $tabIdAlim);
            insertionResultat($email, $tabIdAlim);
            afficherMessage($msg, "Aliment(s) inséré(s) avec succès !");
        }
        else {
            // if(!isset($_POST['email']))
            //     afficherMessage($msg, "L'adresse mail n'a pas été renseignée.");
            // else
            if(!isset($_POST['aliments']))
                afficherMessage($msg, "Aucun aliment n'a été saisie.");
            else if(!isset($_POST['confirmationDroit']))
                afficherMessage($msg, "Veuillez cochez la case de confirmation.");
            else if(!verifierEmail())
                afficherMessage($msg, "Vous avez déjà fait le sondage.");
            else
                afficherMessage($msg, "Un aliment a été sélectionné plusieurs fois.");
        }
        
        require("view/sondage/questions.tpl");
    }

    function recupNomAliments(){
        require("model/recupNomAliments.php");
        

    
    }

    function afficherMessage(&$msg, $texte) {
        $msg = $texte;
    }

    function insertAliments(){
        require("model/insertAliments.php");
    }

?>