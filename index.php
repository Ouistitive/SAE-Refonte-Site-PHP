<?php
    session_start();
    if(!isset($_GET['c']) || !isset($_GET['a'])){
        header("Location: index.php?c=site&a=accueil");
    }

    require("controler/".$_GET['c'].".php");
    $_GET['a']();



    function consoleLog($data) {
        $output = $data;
        if (is_array($output))
            $output = implode(',', $output);
    
        echo "<script>console.log('Debug Objects: " . $output . "' );</script>";
    }
?>