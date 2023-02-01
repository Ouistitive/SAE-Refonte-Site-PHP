<?php

    function afficherFooter() {
        echo "<footer>
            <p id='txtFooter'> Communauté d'Agglomération GRAND SUB CARAIBE </p>
            <div class='infos-footer'>
            <div id='telephone' class='footer-element'>
                <img id='imgTel' src='../view/image/telephone.png'>
                <div class='footer-info collapsed'>
                    <a href='tel:+590590996320'>+590 5 90 99 63 20</a>
                </div>
            </div>

            <div id='mail' class='footer-element'>
                <img id='imgMail' src='../view/image/mail.png'>
                <div class='footer-info collapsed'>
                    <a href='mailto:hege@example.com'>
                        ccsbt2@wanadoo.fr
                    </a>
                </div>
            </div>

            <div id='adresse' class='footer-element'>
                <img id='imgLoca' src='../view/image/localisation.png'>
                <div class='footer-info collapsed'>
                    <a href='https://maps.app.goo.gl/k3tar23jaz3QLjhH8'>
                        36 rue de la république 97100 Basse Terre
                    </a>
                </div>
            </div>

            <div id='temps' class='footer-element'>
                <img id='imgHoraire' src='../view/image/horaire.png'>
                <div class='footer-info collapsed'>
                    <p>
                        Lundi, mardi et jeudi de 7h à 17h

                        Mercredi et vendredi de 7h à 17h
                    </p>
                </div>
            </div>
            </div>
        </footer>";
    }
?>