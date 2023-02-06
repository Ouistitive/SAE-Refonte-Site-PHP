<?php

    if(!isset($_GET['c']) || !isset($_GET['a'])){
        header("Location: index.php?c=site&a=accueil");
    }

    require("controler/".$_GET['c'].".php");
    $_GET['a']();

?>