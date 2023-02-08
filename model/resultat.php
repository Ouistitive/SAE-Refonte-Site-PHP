<?php
    $gagnant = selectresultat();
    var_dump($gagnant);
    require("view/sondage/resultats.tpl");

    function selectresultat() {
        require("connectBD.php");

        $sql = "
        SELECT aliments.alim_nom_fr from aliments
        INNER JOIN resultats WHERE aliments.num = resultats.idAliment_1 OR aliments.num = resultats.idAliment_2 
        OR aliments.num = resultats.idAliment_3 OR aliments.num = resultats.idAliment_4 OR aliments.num = resultats.idAliment_5 
        OR aliments.num = resultats.idAliment_6 OR aliments.num = resultats.idAliment_7 OR aliments.num = resultats.idAliment_8 
        OR aliments.num = resultats.idAliment_9 OR aliments.num = resultats.idAliment_10;";

        try {
            $commande = $pdo->prepare($sql);
            $bool = $commande->execute();
        }
        
        catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die("STOP Catch Verif"); // On arrête tout.
        }

        $gagnant = $commande->fetchAll(PDO::FETCH_ASSOC);

        //var_dump($typesAliments);

        /*echo "<option value='vide'>--Choisissez un type d'aliments--</option>";
        foreach($typesAliments as $type) {
            echo "<option class='saisie-type-aliment' value=" . $type['alim_ssgrp_nom_fr'] . ">" . $type['alim_ssgrp_nom_fr'] . "</option>";
        }*/

        return $gagnant;
                
    }
        
    
?>