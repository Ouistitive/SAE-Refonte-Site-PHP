<?php

    function resultats(){
        require("model/resultat.php");
        $resultat1 = selectresultat1();
        $resultat2 = selectresultat2();
        $resultat3 = selectresultat3();
        require("view/sondage/resultats.tpl");
    }

    function questions(){
        require("model/insertAliments.php");
        if(isset($_SESSION['profile']['email'])){
            
            if(!verifierEmail($_SESSION['profile']['email'])){
                consoleLog("resultats");

                header("Location: index.php?c=sondage&a=resultats");

                
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

    function afficherquestions($msg=""){
        
        
        require("view/sondage/questions.tpl");
    }

    function recupNomAliments(){

        require("model/recupNomAliments.php");

        if(isset($_POST['action'])) {
            $action = $_POST['action'];
    
    
            if($action == "getAliments") {
                $type = $_POST['ssTypeAliments'];
                echo getAliments($type);
            }
            if($action == "getTypesAliment") {
                echo getTypesAliment();
            }
        }
        
        

    
    }

    function afficherMessage(&$msg, $texte) {
        $msg = $texte;
    }

    function insertAliments(){
        require("model/insertAliments.php");

        $email = $_SESSION['profile']['email'];
        $tabAliments;
        $msg = "";
        $tabIdAlim = array();

        
            

        // if(!isset($_POST['email']))
        //     afficherMessage($msg, "L'adresse mail n'a pas été renseignée.");
        // else
        if(!isset($_POST['aliments']))
            afficherMessage($msg, "Aucun aliment n'a été saisi.");
        else if(!isset($_POST['confirmationDroit']))
            afficherMessage($msg, "Veuillez cocher la case de confirmation.");
        else if(!verifierEmail())
            afficherMessage($msg, "Vous avez déjà fait le sondage.");
        else if(!verificationDoublons($_POST['aliments']))
            afficherMessage($msg, "Un aliment a été sélectionné plusieurs fois.");
        else{
            selectIdAliments($_POST['aliments'], $tabIdAlim);
            insertionResultat($_SESSION['profile']['email'], $tabIdAlim);
            afficherMessage($msg, "Aliment(s) inséré(s) avec succès !");

            header("Location: index.php?c=sondage&a=resultats");
        }


        afficherquestions($msg);

        

    }

    

?>