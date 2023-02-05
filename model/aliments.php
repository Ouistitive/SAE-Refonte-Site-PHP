<?php
    require("footer.php");
    require("../view/sondage.html");

    /*function getTypeAliments() {
        require ("connectBD.php");
        $sql = "
        SELECT DISTINCT alim_ssgrp_nom_fr
        FROM aliments;";

        try {
            $commande = $pdo->prepare($sql);
            $bool = $commande->execute();
        }
        
        catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die("STOP Catch Verif"); // On arrête tout.
        }

        $typesAliments = $commande->fetchAll(PDO::FETCH_ASSOC);

        //var_dump($typesAliments);

        echo "<option value='vide'>--Choisissez un type d'aliments--</option>";
        foreach($typesAliments as $type) {
            echo "<option class='saisie-type-aliment' value='" . $type['alim_ssgrp_nom_fr'] . "'>" . $type['alim_ssgrp_nom_fr'] . "</option>";
        }
    }*/


?>