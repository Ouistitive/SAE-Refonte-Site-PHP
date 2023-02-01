var nbAlimentSaisie = 1;
var nbAlimentSaisieMax = 10;

function init() {
    var saisieTypesAliments = document.getElementsByClassName("saisie-type-aliment");

    for(var i = 0; i < saisieTypesAliments.length; i++)
        saisieTypesAliments[i].addEventListener("click", afficherSelectAliments);

    document.getElementById("ajouterAliment").addEventListener("click", ajouterSaisie);
    document.getElementById("supprimerAliment").addEventListener("click", supprimerSaisie);
}

function ajouterSaisie() {
    var elt = document.getElementsByClassName("cache");

    if(nbAlimentSaisie != nbAlimentSaisieMax) {
        nbAlimentSaisie++;
        elt[0].classList.remove("cache");
    }
    else
        alert("Vous avez saisie le nombre maximal d'aliments.");
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
        alert("Vous avez saisie le nombre minimal d'aliments.");
}

function showDiv(divId, element) {
    document.getElementById(divId).style.display = element.target.value != "vide" ? 'block' : 'none';
}

function afficherSelectAliments(event) {
    if(event.target.value != "vide") {
        var divParent = event.target.parentElement;
        showDiv(divParent.id.substring(7), event);
        afficherAliments(event.target.innerHTML, divParent.id.substring(7));
    }
}

function afficherAliments(type, elt) {
    var e = $("#" + elt + " .aliment");
    e.html("");

    $.ajax({
        url: "recupNomAliments.php",
        data: {"ssTypeAliments" : type},
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