<?php

function getInfos($email){
    try{
        require("connectBD.php");
        $sql = "SELECT * FROM Comptes WHERE email=:email;";
        $res = $pdo->prepare($sql);
        $res->bindParam('email', $email, PDO::PARAM_STR);
        $res->execute();
        $data = $res->fetchAll(PDO::FETCH_ASSOC);
        return $data[0];
    }
    catch(Exception $e) {
        echo 'Exception -> ';
        var_dump($e->getMessage());
    }
}

?>