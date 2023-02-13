<!DOCTYPE html>
<html>
    <head>
        <title>Sondage</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="view/styles/homestyle.css">
        <link rel="stylesheet" href="view/styles/css_connexion.css">

        <link rel="stylesheet" href="view/styles/footer.css">
        <link rel="stylesheet" href="view/styles/homestyle_mobile.css">
        <link rel="stylesheet" href="view/styles/aliments.css">
        <script src="view/footer.js"></script>
        <script src="view/aliments.js"></script>
    </head>
    
    <body>
        <div id="all">
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
            
                
            <div id="main-page">
                <nav>
                    <table id="nav-table" class="menu"><tr>
                        <th class="nav-element" id="accueil"><a href="index.php">Accueil</a></th>
                        <th class="nav-element"><a href="index.php?c=site&a=actualites">Actualités</a></th>
                        <th class="nav-element"><a href="/">Les communes membres</a></th>
                        <th class="dropdown nav-element current">
                            <span class=>Infos pratiques ▼</span>
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
                                    <a class="dropdown-element current" href="index.php?c=sondage&a=questions">Sondage</a>
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
                
                <div id="page">
                    <div>
                        <h2 id="titre">Sondage</h2>
                        <p>
                            Avec ce sondage, nous allons récupérer les aliments saisies par les utilisateurs pour pouvoir
                            en faire statistique. Or, le sondage est uniquement accessible aux utilisateurs disposant d'un
                            compte sur le site. <br /> <br />
                            
                            Vous pouvez alors accéder au sondage en créeant un compte ou en vous connectant sur le site
                            en cliquant <a href="index.php?c=site&a=connexion">ici</a>.
                        </p>
                    </div>
                </div>
            </div>

                

            </div>
            
            <?php require("view/site/footer.php"); ?>
        </div>
    </body>
</html>