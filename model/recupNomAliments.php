<?php
    
    if(isset($_POST['action'])) {
        $action = $_POST['action'];


        if($action == "getAliments") {
            $action = $_POST['ssTypeAliments'];
            getAliments($action);
        }
        if($action == "getTypesAliment") {
            getTypesAliment();
        }
    }
    


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

        //var_dump($typesAliments);

        /*echo "<option value='vide'>--Choisissez un type d'aliments--</option>";
        foreach($typesAliments as $type) {
            echo "<option class='saisie-type-aliment' value=" . $type['alim_ssgrp_nom_fr'] . ">" . $type['alim_ssgrp_nom_fr'] . "</option>";
        }*/

        echo json_encode($typesAliments);
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

        echo json_encode($aliments);
    }
?>