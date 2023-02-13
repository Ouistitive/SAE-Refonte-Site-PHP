<!DOCTYPE html>
<html>

<head>
	<title>Connexion</title>
	<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="view/styles/homestyle.css">
	<link rel="stylesheet" href="view/styles/css_connexion.css">

	<link rel="stylesheet" href="view/styles/footer.css">
    <link rel="stylesheet" href="view/styles/homestyle_mobile.css">
	<script src="view/footer.js"></script>
</head> 
<body>
<header>
	<img id="logo" src="view/image/logo casbt.png">
	<div class="recherche">
		<input type="text" placeholder="Recherche..">
		<img id="imgLoupe" src="view/image/loupe.png">
	</div>
</header>
<div id="all">
	<div id="main-page">
		<nav>
                <table id="nav-table" class="menu"><tr>
                    <th class="nav-element" id="accueil.php"><a href="/">Accueil</a></th>
                    <th class="nav-element"><a href="index.php?c=site&a=actualites">Actualités</a></th>
                    <th class="nav-element"><a href="/">Les communes membres</a></th>
                    <th class="dropdown nav-element">
                        <span>Infos pratiques ▼</span>
                            <div class="dropdown-content">
                                <div class="dropdown-element dropright">
                                    <span>Mes démarches en ligne</span>
                                    <div class="dropright-content">
                                        <a href="/" class="dropright-element">Contrôle Système d'Assainissement</a>
                                        <a href="/" class="dropright-element">Demande de Résiliation d'Abonnement</a>
                                        <a href="/" class="dropright-element">Je demande un branchement</a>
                                        <a href="/" class="dropright-element">Modifier mes coordonées</a>
                                        
                                    </div>
                                </div>
                                <a class="dropdown-element" href="index.php?c=site?c=sondage&a=questions">Sondage</a>
                                <a class="dropdown-element" href="/">Auto-relève</a>
                                <a class="dropdown-element" href="/">Tarifs et réglements</a>
                                <a class="dropdown-element" href="/">Comment lire mon compteur ?</a>
                                <a class="dropdown-element" href="/">Conseil d'exploitation</a>
                                <a class="dropdown-element" href="/">Foire aux questions</a>
                                
                            </div>
                    </th>
                    <th class="nav-element"><a href="index.php?c=site&a=nous_contacter">Nous contacter</a></th>
                    <th class="nav-element"><a href="/">Les élus CASBT</a></th>
                    <th class="icon"><a href="javascript:void(0);" onclick="myFunction()">    
                            <i class="fa fa-bars fa-2x"></i>
                        </a>
                    </th>
                </tr></table>
            </nav>
        <div id="connexion-page">
    		<h1 id="con">Inscription</h1>
    
    		<form id="connexion-form" action="index.php?c=user&a=createAccount" method="POST">
                <div id="identifiants">
                    <div class="connexion-texbox">
        			    <input type="text" id="fid" placeholder="Email" name="email">
                    </div>
                    <div class="connexion-texbox">
        			    <input type="password" id="fmdp" placeholder="Mot de passe" name="mdp">
                    </div>
                    <div class="connexion-texbox">
        			    <input type="text" id="fnom" placeholder="Nom" name="nom">
                    </div>
                    <div class="connexion-texbox">
        			    <input type="text" id="fprenom" placeholder="Prenom" name="prenom">
                    </div>
                </div>
    			<a href="index.php?c=site&a=connexion" class="entre">Déjà un compte ?</a>
    			<input type="submit" value="Se connecter">
    		</form>
        </div>

	</div>
	<?php require("view/site/footer.php"); ?>
</div>
    <script>
function myFunction() {
  var x = document.getElementById("nav-table");
  if (x.className === "menu") {
    x.className += " responsive";
  } else {
    x.className = "menu";
  }
}
</script>
</body>

</html>