<!DOCTYPE html>
<html lang="fr">
	<head>
	    <title>CASBT</title>
	    <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="view/styles/homestyle.css">
        <link rel="stylesheet" href="view/styles/footer.css">
        <link rel="stylesheet" href="view/styles/nous_contacter.css">
        <link rel="stylesheet" href="view/styles/homestyle_mobile.css">
        <script src="view/footer.js"></script>
    </head>
    
    <body>
        <header>
            <img id="logo" src="view/image/logo casbt.png">
            <div class="rech-compte">
                <button class="compte" onclick="location.href='connexion.php';">Accéder à votre espace privé</button>
                <div class="recherche">
                    <input type="text" placeholder="Recherche..">
                    <img id="imgLoupe" src="view/image/loupe.png">
                </div>
            </div>
        </header>
        <div id="all">

        <div id="main-page">
            <nav>
                <table id="nav-table" class="menu"><tr>
                    <th class="nav-element" id="accueil"><a href="index.php">Accueil</a></th>
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
                    <th class="nav-element current"><a href="index.php?c=site&a=nous_contacter">Nous contacter</a></th>
                    <th class="nav-element"><a href="/">Les élus CASBT</a></th>
                    <th class="icon"><a href="javascript:void(0);" onclick="myFunction()">    
                            <i class="fa fa-bars fa-2x"></i>
                        </a>
                    </th>
                </tr></table>
            </nav>

            <div id=page>
                
                <div id="gauche">
                <h2 id="titre">Nous contacter</h2>
                <p id="adresseContact">Communauté d'Agglomération GRAND SUD CARAIBE</p>
                <p>36 Rue de la République - 97100 Basse Terre</p>


                <iframe id="maps" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1566.6794495041895!2d-61.73104268574015!3d15.992729959623968!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8c149fc0c8acadeb%3A0xd984228f2f68c2ae!2s36%20Rue%20de%20la%20R%C3%A9publique%2C%20Basse-Terre%2097100!5e0!3m2!1sfr!2sfr!4v1663664613776!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                
                <button id="boutonEnvoyer" onclick="document.getElementById('formulaire').style.display = 'block';">Nous envoyer un message</button>

                <div id="formulaire" onclick="">
                    <p id="titre-formulaire">Formulaire</p>
                    <div id="objet">
                        <p>Objet :</p>
                        <input>
                    </div>
                    <div id="contenu">
                        <p>Contenu :</p>
                        <textarea rows="20" cols="33"></textarea>
                    </div>
                    <div id="publication">
                        <button id="publier" onclick="document.getElementById('formulaire').style.display = 'none';">Publier</button>
                        <button onclick="document.getElementById('formulaire').style.display = 'none';">Annuler</button>
                    </div>
                    
                </div>
            
            </div>
                <div id="droite">
                    <div id="mini-actu">
                        <a id="nomActu">Actualités</a>
                        <p id="titreActualite" class="titreActualite">Coupure dans la distribution d'eau à Baillif</p>
                        <p id="contenuActualite">
                            Suite à une rupture de canalisation la distribution de l'eau sera interrompue le samedi 27 février 2016 sur la commune de baillif et particulièrement dans les secteurs de CADET, BOURG, Cité CHAULET de 7h à 18h. madame le Président vous prie de bien l'excuser pour la gêne occasionnée
                        </p>
                    </div>
                </div>
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

            fetch("actu.json")
      .then(response => response.json())
      .then(json => {
          document.getElementById("titreActualite").innerHTML = json[0].titre;
          document.getElementById("contenuActualite").innerHTML = json[0].p;     
      });
</script>
    </body>

</html>
