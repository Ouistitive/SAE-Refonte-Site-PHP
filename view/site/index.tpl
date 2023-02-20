<!DOCTYPE html>
<html lang="fr">
	<head>
	    <title>CASBT</title>
	    <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="view/styles/homestyle.css">
        <link rel="stylesheet" href="view/styles/footer.css">
        <link rel="stylesheet" href="view/styles/homestyle_mobile.css">
        <script src="view/footer.js"></script>
	</head
    
    <body>
        <div id="all">
        <header>
            <img id="logo" src="view/image/logo casbt.png">
            <div class="rech-compte">
                <div class="recherche">
                    <input type="text" placeholder="Recherche..">
                    <img id="imgLoupe" src="view/image/loupe.png">
                </div>
            </div>
        </header>
        
            
        <div id="main-page">
            <nav>
                <table id="nav-table" class="menu"><tr>
                    <th class="nav-element current" id="accueil"><a href="index.php">Accueil</a></th>
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
                                <a class="dropdown-element" href="index.php?c=sondage&a=questions">Sondage</a>
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
            
            <div id=page>
                
                <div id="gauche">
                <h2 id="titre">Accueil</h2>
                <p>Chers abonnés, chères abonnées,</p>
                <p>Toute l'équipe de la Communauté d'Agglomération du Sud Basse-Terre est heureuse de vous accueillir sur votre tout nouveau portail web.</p>
                <p>Après avoir créé votre espace abonné, quelques clics suffiront pour :</p>
                <ul>
                    <li>Suivre vos consommations</li>
                    <li>Gérer vos abonnements</li>
                    <li>Télécharger et payer vos factures en ligne</li>
                    <li>Gérer vos moyens de paiement</li>
                    <li>Signaler un déménagement</li>
                    <li>Effectuer des demandes d'intervention</li>
                    <li>Entrer en contact avec votre service clientèle</li>
                </ul>
                <p>Pour créer votre espace abonné, munissez-vous simplement de votre dernière facture, cliquez sur le lien "Pas encore de compte" et laissez-vous guider.</p>
                </div>
                <div id="droite">
                    <button class = "compte" onclick="location.href='index.php?c=site&a=connexion';">Accéder à votre espace privé</button>
                    <article id="mini-actu">
                        <a id="nomActu">Actualités</a>
                        <b><p id="titreactu" class="titreActualite">Coupure dans la distribution d'eau à Baillif</p></b>
                        <p id="contenuActualite">
                            Suite à une rupture de canalisation la distribution de l'eau sera interrompue le samedi 27 février 2016 sur la commune de baillif et particulièrement dans les secteurs de CADET, BOURG, Cité CHAULET de 7h à 18h. madame le Président vous prie de bien l'excuser pour la gêne occasionnée
                        </p>
                    </article>
                </div>
            
            </div>
        </div>
        




        
        <?php require("view/site/footer.php"); ?>
    </div>
</body>

        <script>
function myFunction() {
  var x = document.getElementById("nav-table");
  if (x.className === "menu") {
    x.className += " responsive";
  } else {
    x.className = "menu";
  }
}



    fetch("actu.json")
      .then(response => response.json())
      .then(json => {
          document.getElementById("titreactu").innerHTML = json[0].titre;
          document.getElementById("contenuActualite").innerHTML = json[0].p;     
      });
</script>
    </body>

</html>
