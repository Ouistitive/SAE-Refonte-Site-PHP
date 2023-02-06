<?php
    $email = $_POST['email'];
    $tabAliments = $_POST['aliments'];
    $msg = "";
    $tabIdAlim = array();

    selectIdAliments($tabAliments, $tabIdAlim);
    insertionResultat($email, $tabIdAlim);

    require("view/sondage/questions.tpl");

    function selectIdAliments($tabAliments, &$tabId) {
        global $msg;
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

    function insertionResultat($email, &$tabId) {
        global $msg;
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
                    $msg = $msg . " " . $tabId[$i]["num"];
                    echo $tabId[$i]["num"] . " ";
                }
                else {
                    $commande->bindParam("alim" . ($i+1), $varNul, PDO::PARAM_STR);  
                    $msg = $msg . " " . "/";
                    echo "NULL" . " ";
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