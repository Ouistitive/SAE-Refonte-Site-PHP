<!DOCTYPE html>
<html lang="fr">
    <head>
        <title>Sondage</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="view/styles/homestyle.css">
        <link rel="stylesheet" href="view/styles/css_connexion.css">
        <link rel="stylesheet" href="view/styles/resultats.css">

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
                    <div id="gauche">
                        <h2 id="titre">Résultats</h2>
                        <p>
                            Bienvenue sur la page de résultats. Sur cette page, vous allez pouvoir voir les
                            10 aliments préférés. 
                        </p>
                        
                        <table>
                        <tr>
                            <th>Classement popularité</th>
                            <th>Nom de l'aliment</th>
                            <th>Nombre de fois choisies</th>
                        </tr>
                        <?php $compteur = 0;
                        foreach ($gagnant as $g) { ?>
                            <tr>
                            <td><?php echo ++$compteur; ?></td>
                            <td><?php echo $g['alim_nom_fr']; ?></td>
                            <td><?php echo $g['nombre']; ?></td>
                            </tr>
                        <?php } ?>
                        
                        </table>

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

                

            </div>
            
            <?php require("view/site/footer.php"); ?>
        </div>
    </body>
</html>