<?php
    $gagnant = selectresultat();
    extract($gagnant);
    require("view/sondage/resultats.tpl");

    function selectresultat() {
        require("connectBD.php");

        $sql = "
        SELECT aliments.nom, COUNT(*)
        FROM Resultats
        JOIN aliments ON Resultats.idAliment_1 = aliments.id OR Resultats.idAliment_2 = aliments.id OR Resultats.idAliment_3 = aliments.id 
        OR Resultats.idAliment_4 = aliments.id OR Resultats.idAliment_5 = aliments.id OR Resultats.idAliment_6 = aliments.id 
        OR Resultats.idAliment_7 = aliments.id OR Resultats.idAliment_8 = aliments.id OR Resultats.idAliment_9 = aliments.id OR Resultats.idAliment_10 = aliments.id
        GROUP BY aliments.nom
        ORDER BY COUNT(*) DESC
        LIMIT 1;";

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