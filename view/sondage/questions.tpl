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
                            Bienvenue sur la page de sondage. Sur cette page, vous allez pouvoir saisir les
                            dix aliments que vous préférez consommer. Les résultats de ce sondage sont affichés
                            publiquement <a href="index.php?c=sondage&a=resultats">ici</a>.

                            <br /> <br />
                            Un aliment ne peut pas être sélectionné plusieurs fois.
                        </p>

                        <form action="index.php?c=sondage&a=insertAliments" method="post">
                            <div id="modifieNbAliments">
                                <input type="button" value="Ajouter un aliment" id="ajouterAliment">
                                <input type="button" value="Enlever un aliment" id="supprimerAliment">
                            </div>

                            <!--<div id="email">
                                <label for="email">Email <span class="obligatoire">*</span> : </label>
                                <input id="saisie-mail" name="email" placeholder="Entrez votre email. . .">
                            </div>-->

                            <div id="saisie">
                                <hr>
                                <div class="saisie-aliment">
                                    
                                    <label for="type-aliments">Selectionnez le groupe de l'aliment : </label>
                                    <select id="saisie-1"></select>
                                    <div class="select-aliments" id="1" style="display: none;">
                                        <label for="aliments">Selectionnez l'aliment : </label>
                                        <select name="aliments[]" class="aliment">

                                        </select>
                                    </div>
                                    <hr>
                                </div>
                                
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Selectionnez le groupe de l'aliment : </label>
                                    <select id="saisie-2"></select>
                                    <div class="select-aliments" id="2" style="display: none;">
                                        <label for="aliments">Selectionnez l'aliment : </label>
                                        <select name="aliments[]" class="aliment">

                                        </select>
                                    </div>
                                    <hr>
                                </div>

                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Selectionnez le groupe de l'aliment : </label>
                                    <select id="saisie-3"></select>
                                    <div class="select-aliments" id="3" style="display: none;">
                                        <label for="aliments">Selectionnez l'aliment : </label>
                                        <select name="aliments[]" class="aliment">
                                            
                                        </select>
                                    </div>
                                    <hr>
                                </div>
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Selectionnez le groupe de l'aliment : </label>
                                    <select id="saisie-4"></select>
                                    <div class="select-aliments" id="4" style="display: none;">
                                        <label for="aliments">Selectionnez l'aliment : </label>
                                        <select name="aliments[]" class="aliment">
                                            
                                        </select>
                                    </div>
                                    <hr>
                                </div>
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Selectionnez le groupe de l'aliment : </label>
                                    <select id="saisie-5"></select>
                                    <div class="select-aliments" id="5" style="display: none;">
                                        <label for="aliments">Selectionnez l'aliment : </label>
                                        <select name="aliments[]" class="aliment">
                                            
                                        </select>
                                    </div>
                                    <hr>
                                </div>
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Selectionnez le groupe de l'aliment : </label>
                                    <select id="saisie-6"></select>
                                    <div class="select-aliments" id="6" style="display: none;">
                                        <label for="aliments">Selectionnez l'aliment : </label>
                                        <select name="aliments[]" class="aliment">
                                            
                                        </select>
                                    </div>
                                    <hr>
                                </div>
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Selectionnez le groupe de l'aliment : </label>
                                    <select id="saisie-7"></select>
                                    <div class="select-aliments" id="7" style="display: none;">
                                        <label for="aliments">Selectionnez l'aliment : </label>
                                        <select name="aliments[]" class="aliment">
                                            
                                        </select>
                                    </div>
                                    <hr>
                                </div>
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Selectionnez le groupe de l'aliment : </label>
                                    <select id="saisie-8"></select>
                                    <div class="select-aliments" id="8" style="display: none;">
                                        <label for="aliments">Selectionnez l'aliment : </label>
                                        <select name="aliments[]" class="aliment">
                                            
                                        </select>
                                    </div>
                                    <hr>
                                </div>
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Selectionnez le groupe de l'aliment : </label>
                                    <select id="saisie-9"></select>
                                    <div class="select-aliments" id="9" style="display: none;">
                                        <label for="aliments">Selectionnez l'aliment : </label>
                                        <select name="aliments[]" class="aliment">
                                            
                                        </select>
                                    </div>
                                    <hr>
                                </div>
                                <div class="saisie-aliment cache">
                                    <label for="type-aliments">Selectionnez le groupe de l'aliment : </label>
                                    <select id="saisie-10"></select>
                                    <div class="select-aliments" id="10" style="display: none;">
                                        <label for="aliments">Selectionnez l'aliment : </label>
                                        <select name="aliments[]" class="aliment">
                                            
                                        </select>
                                    </div>
                                    <hr>
                                </div>
                            </div>
                            



                            <div id="confirmation">
                                <input type="checkbox" id="confirmationDroit" name="confirmationDroit">
                                <label for="confirmationDroit">
                                    <span class="obligatoire">*</span>Je suis pleinement conscient que mes résultats seront utilisés à des 
                                    fins statistiques et affichés sur ce site. 
                                </label>
                            </div>

                            (<span class="obligatoire">*</span>) : Champs obligatoires

                            <input id="valider" type="submit" value="Envoyer">
                        </form>

                        <div id="msgErreur">
                            <?php echo !isset($msg) ? "" : $msg; ?>
                        </div>

                        <a href="index.php?c=sondage&a=resultats">Résultats</a>
                    </div>
                </div>
            </div>

                

            </div>
            
            <?php require("view/site/footer.php"); ?>
        </div>
    </body>
</html>