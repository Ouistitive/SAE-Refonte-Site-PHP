<?php
    

    function verificationDoublons(&$tabAliments) {
        


        for($i = 0; $i < count($tabAliments); $i++) {
            for($j = 0; $j < count($tabAliments); $j++) {
                if($i == $j) continue;

                if($tabAliments[$i] == $tabAliments[$j])
                    return false;
            }
        }

        return true;
    }

    function verificationAvecSessionEtPost(){
        if(!isset($_SESSION['profile']['email']))
            return false;

        $email = $_SESSION['profile']['email'];

        if(!isset($_POST['aliments']))
            return false;
        if(!isset($_POST['confirmationDroit']))
            return false;
            if(!verifierEmail($email))
            return false;
        
        $tabAliments = $_POST['aliments'];

        return verificationDoublons($tabAliments);
    }

    function selectIdAliments($tabAliments, &$tabId) {
        require("connectBD.php");

        for($i = 0; $i < count($tabAliments); $i++) {
            $sql = "
            SELECT num FROM aliments
            WHERE alim_nom_fr = :alim";

            try {    
                $commande = $pdo->prepare($sql);
                $commande->bindParam("alim", $tabAliments[$i], PDO::PARAM_STR);
                $bool = $commande->execute();
            }
            
            catch (PDOException $e) {
                echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
                die("STOP Catch Verif");
            }
            
            if($bool)
                array_push($tabId, $commande->fetchAll(PDO::FETCH_ASSOC)[0]);
        }
    }
    //Renvoie true si l'utilisateur peut repondre au sondage
    function verifierEmail() {
        require("connectBD.php");
        $sql = "
        SELECT email FROM resultats;";

        $tab = array();
        if(!isset($_SESSION['profile']['email']))
            return false;
        $email = $_SESSION['profile']['email'];

        try {
            $commande = $pdo->prepare($sql);
            $bool = $commande->execute();

            if($bool)
                $tab = $commande->fetchAll(PDO::FETCH_ASSOC);
            
            foreach($tab as $i) {
                if(strtoupper($email) == strtoupper($i["email"]))
                    return false;
            }

            return true;
        }
        
        catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die("STOP Catch Verif");
        }

        return false;
    }

    function insertionResultat($email, &$tabId) {
        require ("connectBD.php");
        $sql = "
        INSERT INTO resultats(email, idAliment_1, idAliment_2, idAliment_3, idAliment_4, idAliment_5, idAliment_6, idAliment_7, 
        idAliment_8, idAliment_9, idAliment_10) VALUES 
        (:email, :alim1, :alim2, :alim3, :alim4, :alim5, :alim6, :alim7, :alim8, :alim9, :alim10);";

        try {
            $varNul = NULL;

            $commande = $pdo->prepare($sql);
            $commande->bindParam("email", $email, PDO::PARAM_STR);

            for($i = 0; $i < 10; $i++) {
                if($i < count($tabId)) {
                    $commande->bindParam("alim" . ($i+1), $tabId[$i]["num"], PDO::PARAM_STR); 
                }
                else {
                    $commande->bindParam("alim" . ($i+1), $varNul, PDO::PARAM_STR);  
                }
            }

            $bool = $commande->execute();
        }
        
        catch (PDOException $e) {
            echo utf8_encode("Echec de insert : " . $e->getMessage() . "\n");
            die("STOP Catch Verif");
        }        
    }
?>