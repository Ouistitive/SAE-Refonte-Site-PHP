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
                    <button class="compte" onclick="location.href='connexion.php';">Accéder à votre espace privé</button>
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
                        <h2 id="titre">Sondage</h2>
                        <p>
                            Bienvenue sur la page de sondage. Sur cette page, vous allez pouvoir saisir les
                            dix aliments que vous préférez consommer. Les résultats de ce sondage est affichés
                            sur une autre page et sont accessibles à tous.
                        </p>

                        <p>
                            Si vous essayez de voter deux fois pour le même aliment, cela ne le comptabilisera qu'une fois.
                        </p>

                        <form action="index.php?c=sondage&a=insertAliments" method="post">
                            <label for="email">Email (<span class="obligatoire">*</span>) </label>
                            <input id="saisie-mail" name="email" placeholder="Entrez votre email. . .">

                            <div id="saisie">
                                <div class="saisie-aliment">
                                    <label for="type-aliments">Types d'aliments</label>
                                    <select id="saisie-1"></select>
                                    <div id="1" style="display: none;">
                                        <label for="aliments">L'aliment</label>
                                        <select name="aliments[]" class="aliment">

                                        </select>
                                    </div>
                                </div>
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Types d'aliments</label>
                                    <select id="saisie-2"></select>
                                    <div id="2" style="display: none;">
                                        <label for="aliments">L'aliment</label>
                                        <select name="aliments[]" class="aliment">

                                        </select>
                                    </div>
                                </div>
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Types d'aliments</label>
                                    <select id="saisie-3"></select>
                                    <div id="3" style="display: none;">
                                        <label for="aliments">L'aliment</label>
                                        <select name="aliments[]" class="aliment">
                                            
                                        </select>
                                    </div>
                                </div>
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Types d'aliments</label>
                                    <select id="saisie-4"></select>
                                    <div id="4" style="display: none;">
                                        <label for="aliments">L'aliment</label>
                                        <select name="aliments[]" class="aliment">
                                            
                                        </select>
                                    </div>
                                </div>
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Types d'aliments</label>
                                    <select id="saisie-5"></select>
                                    <div id="5" style="display: none;">
                                        <label for="aliments">L'aliment</label>
                                        <select name="aliments[]" class="aliment">
                                            
                                        </select>
                                    </div>
                                </div>
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Types d'aliments</label>
                                    <select id="saisie-6"></select>
                                    <div id="6" style="display: none;">
                                        <label for="aliments">L'aliment</label>
                                        <select name="aliments[]" class="aliment">
                                            
                                        </select>
                                    </div>
                                </div>
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Types d'aliments</label>
                                    <select id="saisie-7"></select>
                                    <div id="7" style="display: none;">
                                        <label for="aliments">L'aliment</label>
                                        <select name="aliments[]" class="aliment">
                                            
                                        </select>
                                    </div>
                                </div>
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Types d'aliments</label>
                                    <select id="saisie-8"></select>
                                    <div id="8" style="display: none;">
                                        <label for="aliments">L'aliment</label>
                                        <select name="aliments[]" class="aliment">
                                            
                                        </select>
                                    </div>
                                </div>
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Types d'aliments</label>
                                    <select id="saisie-9"></select>
                                    <div id="9" style="display: none;">
                                        <label for="aliments">L'aliment</label>
                                        <select name="aliments[]" class="aliment">
                                            
                                        </select>
                                    </div>
                                </div>
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Types d'aliments</label>
                                    <select id="saisie-10"></select>
                                    <div id="10" style="display: none;">
                                        <label for="aliments">L'aliment</label>
                                        <select name="aliments[]" class="aliment">
                                            
                                        </select>
                                    </div>
                                </div>
                            </div>
                            

                            <input type="button" value="Ajouter un aliment" id="ajouterAliment">
                            <input type="button" value="Enlever un aliment" id="supprimerAliment">

                            <div id="confirmation">
                                <input type="checkbox" id="confirmationDroit" name="confirmationDroit">
                                <label for="confirmationDroit">
                                    <span class="obligatoire">*</span>Je suis pleinement conscient que mes résultats seront utilisés à des 
                                    fins statistiques et affichés sur ce site. 
                                </label>
                            </div>

                            <input id="valider" type="submit" value="Envoyer">
                            <a href="index.php?c=sondage&a=resultats">Résultats</a>
                        </form>

                        <div>
                            <?php echo $msg; ?>
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

                

            </div>
            
            <?php require("view/site/footer.php"); ?>
        </div>
    </body>
</html>