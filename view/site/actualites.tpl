<!DOCTYPE html>
<html>

<head>
    <title>Actualités</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link rel="stylesheet" href="view/styles/homestyle.css">
    <link rel="stylesheet" href="view/styles/actualites.css">
    <link rel="stylesheet" href="view/styles/footer.css">
    <link rel="stylesheet" href="view/styles/homestyle_mobile.css">
    <script src="view/footer.js"></script>
    <script src="view/actualites.js"></script>
</head>
<body>
    <header>
        <img id="logo" src="view/image/logo casbt.png">
        <div class="rech-compte">
            <button class="compte" onclick="location.href='index.php?c=site&a=connexion';">Accéder à votre espace privé</button>
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
                        <th class="nav-element current"><a href="index.php?c=site&a=actualites">Actualités</a></th>
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

            <div id="page-actu">
                <div id="haut">
                    <h2 class="titreActualite">Actualités</h2>
                    <div id=droit>
                        <div class="ligne">
                            <p id="numP"></p>
                            <p>Aller à la page: </p>
                            <input type="text" placeholder="Saisie..">
                        </div>
                        <div class="ligne">
                            <button id="pprec">Page précédente</button>
                            <button id="psuiv">Page suivante</button>
                        </div>
                    </div>
                </div>
                <div id="texte">

                    
                    <!--Sera remplit par le js-->
                </div>

                <button id="boutonEnvoyer" onclick="document.getElementById('formulaire').style.display = 'block';">Nouvelle actualité</button>
                <div id="formulaire">
                <form action="/actualites" method="POST"> <!-- DOIT ETRE FINI-->
                    
                    
                        <p id="titre-formulaire">Nouvelle actualité</p>
                        
                        <div id="objet">
                            <p>Titre :</p>
                            <input type="text" name="titre">
                        </div>
                        <div id="contenu">
                            <p>Contenu :</p>
                            <textarea rows="20" cols="33" name="p"></textarea>
                        </div>
                        <div id="publication">
                            <input type="submit">
                            <button onclick="() => {document.getElementById('formulaire').style.display = 'none'; return false;}">Annuler</button>
                        
                    </div>
                </form>
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




</script>
    </body>

</html>