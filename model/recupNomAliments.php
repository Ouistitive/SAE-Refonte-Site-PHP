<?php
    if(isset($_POST['ssTypeAliments'])) {
        $action = $_POST['ssTypeAliments'];
        getAliments($action);
    }


function getAliments($type) {
    require("connectBD.php");
    $sql = "
    SELECT alim_nom_fr FROM `aliments` WHERE alim_ssgrp_nom_fr = '" . $type . "'";

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