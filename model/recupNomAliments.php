<?php
    
    
    


    function getTypesAliment() {
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


        return json_encode($typesAliments);
    }

    function getAliments($type) {
        require("connectBD.php");
        $sql = "
        SELECT DISTINCT alim_nom_fr FROM `aliments` WHERE alim_ssgrp_nom_fr = '" . $type . "'";

        try {
            $commande = $pdo->prepare($sql);
            $bool = $commande->execute();
        }
        
        catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die("STOP Catch Verif"); // On arrête tout.
        }

        $aliments = $commande->fetchAll(PDO::FETCH_ASSOC);

        return json_encode($aliments);
    }
?>