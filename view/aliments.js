var nbAlimentSaisie = 1;
var nbAlimentSaisieMax = 10;
var saisieTypesAliments;

function init() {
    mettreTypeAliments();
    
    



    document.getElementById("ajouterAliment").addEventListener("click", ajouterSaisie);
    document.getElementById("supprimerAliment").addEventListener("click", supprimerSaisie);

}

function ajouterSaisie() {
    var elt = document.getElementsByClassName("cache");

    if(nbAlimentSaisie != nbAlimentSaisieMax) {
        nbAlimentSaisie++;
        elt[0].classList.remove("cache");
        mettreTypeAliments();
    }
    else
        alert("Vous avez saisi le nombre maximal d'aliments.");
}

function supprimerSaisie() {
    var elt = document.getElementsByClassName("saisie-aliment");

    if(nbAlimentSaisie != 1) {
        $("#saisie-" + nbAlimentSaisie).val("vide");
        $("#" + nbAlimentSaisie).css("display", "none");
        nbAlimentSaisie--;
        elt[nbAlimentSaisie].classList.add("cache");
    }
    else
        alert("Vous avez saisi le nombre minimal d'aliments.");
}

function showDiv(divId, element) {
    document.getElementById(divId).style.display = element.target.value != "vide" ? 'block' : 'none';
}

function afficherSelectAliments(e) {
    var id = e.target.id;
    if(e.target.value != "vide") {
        showDiv(id.substring(7), e);
        afficherAliments(e.target.value, id.substring(7));
    }
    else {
        showDiv(id.substring(7), e);   
    }
}

function mettreTypeAliments() {
    var e = $("#saisie-" + nbAlimentSaisie);

    $.ajax({
        url: "index.php?c=sondage&a=recupNomAliments",
        data: {"action" : "getTypesAliment"},
        dataType: "json",
        method: "POST",
        success: function(retour) {
            e.html("<option value='vide'>--Choisissez un type d'aliment--</option>");
            retour.forEach(elt => {
                e.html(e.html() + "<option class='saisie-type-aliment' value='" + elt['alim_ssgrp_nom_fr'] + "'>" + elt['alim_ssgrp_nom_fr'] + "</option>");
            });

            saisieTypesAliments = document.getElementById("saisie-" + nbAlimentSaisie);
            saisieTypesAliments.addEventListener("change", (e) => { afficherSelectAliments(e) });
        },
        error: function() {
            alert("Erreur url");
        }
    });
}

function afficherAliments(type, elt) {
    var e = $("#" + elt + " .aliment");
    e.html("");

    $.ajax({
        url: "index.php?c=sondage&a=recupNomAliments",
        data: {"action": "getAliments" ,"ssTypeAliments" : type},
        dataType: "json",
        method: "POST",
        success: function(retour) {
            retour.forEach(element => {
                e.html(e.html() + "<option>" + element['alim_nom_fr'] + "</option>");
            });
        },
        error: function() {
            alert("PB avec l'URL");
        }
    });
}

window.addEventListener("load", init);