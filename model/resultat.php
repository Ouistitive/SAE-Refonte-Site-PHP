<?php
    

    function selectresultat1() {
        require("connectBD.php");

        $sql = "
        SELECT aliments.alim_nom_fr, COUNT(*) as nombre from aliments
        INNER JOIN resultats WHERE aliments.num = resultats.idAliment_1 OR aliments.num = resultats.idAliment_2 
        OR aliments.num = resultats.idAliment_3 OR aliments.num = resultats.idAliment_4 OR aliments.num = resultats.idAliment_5 
        OR aliments.num = resultats.idAliment_6 OR aliments.num = resultats.idAliment_7 OR aliments.num = resultats.idAliment_8 
        OR aliments.num = resultats.idAliment_9 OR aliments.num = resultats.idAliment_10
        GROUP BY alim_nom_fr
        ORDER BY 2 DESC
        LIMIT 10;";

        try {
            $commande = $pdo->prepare($sql);
            $bool = $commande->execute();
        }
        
        catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die("STOP Catch Verif"); // On arrête tout.
        }

        $resultat1 = $commande->fetchAll(PDO::FETCH_ASSOC);

        //var_dump($typesAliments);

        /*echo "<option value='vide'>--Choisissez un type d'aliments--</option>";
        foreach($typesAliments as $type) {
            echo "<option class='saisie-type-aliment' value=" . $type['alim_ssgrp_nom_fr'] . ">" . $type['alim_ssgrp_nom_fr'] . "</option>";
        }*/

        return $resultat1;
                
    }
    
    function selectresultat2() {
        require("connectBD.php");

        $sql = "
        SELECT aliments.alim_nom_fr, aliments.alim_ssssgrp_nom_fr , COUNT(*) as nombre 
        FROM aliments 
        INNER JOIN resultats 
        ON (aliments.num = resultats.idAliment_1 OR aliments.num = resultats.idAliment_2 
        OR aliments.num = resultats.idAliment_3 OR aliments.num = resultats.idAliment_4 
        OR aliments.num = resultats.idAliment_5 OR aliments.num = resultats.idAliment_6 
        OR aliments.num = resultats.idAliment_7 OR aliments.num = resultats.idAliment_8 
        OR aliments.num = resultats.idAliment_9 OR aliments.num = resultats.idAliment_10)
        AND aliments.alim_grp_nom_fr = 'produits laitiers et assimilés'
        group By alim_nom_fr
        ORDER BY COUNT(*) DESC
        LIMIT 10;";

        try {
            $commande = $pdo->prepare($sql);
            $bool = $commande->execute();
        }
        
        catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die("STOP Catch Verif"); // On arrête tout.
        }

        $resultat2 = $commande->fetchAll(PDO::FETCH_ASSOC);

        //var_dump($typesAliments);

        /*echo "<option value='vide'>--Choisissez un type d'aliments--</option>";
        foreach($typesAliments as $type) {
            echo "<option class='saisie-type-aliment' value=" . $type['alim_ssgrp_nom_fr'] . ">" . $type['alim_ssgrp_nom_fr'] . "</option>";
        }*/

        return $resultat2;
                
    }

    function selectresultat3() {
        require("connectBD.php");

        $sql = "
        SELECT aliments.alim_nom_fr, COUNT(*) as nombre from aliments
        INNER JOIN resultats WHERE aliments.num = resultats.idAliment_1 OR aliments.num = resultats.idAliment_2 
        OR aliments.num = resultats.idAliment_3 OR aliments.num = resultats.idAliment_4 OR aliments.num = resultats.idAliment_5 
        OR aliments.num = resultats.idAliment_6 OR aliments.num = resultats.idAliment_7 OR aliments.num = resultats.idAliment_8 
        OR aliments.num = resultats.idAliment_9 OR aliments.num = resultats.idAliment_10
        GROUP BY alim_nom_fr
        ORDER BY 2 DESC
        LIMIT 20;";

        try {
            $commande = $pdo->prepare($sql);
            $bool = $commande->execute();
        }
        
        catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die("STOP Catch Verif"); // On arrête tout.
        }

        $resultat3 = $commande->fetchAll(PDO::FETCH_ASSOC);

        //var_dump($typesAliments);

        /*echo "<option value='vide'>--Choisissez un type d'aliments--</option>";
        foreach($typesAliments as $type) {
            echo "<option class='saisie-type-aliment' value=" . $type['alim_ssgrp_nom_fr'] . ">" . $type['alim_ssgrp_nom_fr'] . "</option>";
        }*/

        return $resultat3;
                
    }
    

    /*SELECT aliments.alim_nom_fr,aliments.alim_ssgrp_nom_fr, COUNT(*) as nombre from aliments
    INNER JOIN resultats WHERE aliments.num = resultats.idAliment_1 OR aliments.num = resultats.idAliment_2 
    OR aliments.num = resultats.idAliment_3 OR aliments.num = resultats.idAliment_4 OR aliments.num = resultats.idAliment_5 
    OR aliments.num = resultats.idAliment_6 OR aliments.num = resultats.idAliment_7 OR aliments.num = resultats.idAliment_8 
    OR aliments.num = resultats.idAliment_9 OR aliments.num = resultats.idAliment_10
    AND alim_grp_nom_fr = "produits laitiers et assimilés"
    GROUP BY alim_nom_fr
    ORDER BY 3 DESC
    LIMIT 10;*/

?>