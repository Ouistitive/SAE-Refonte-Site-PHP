

    let tab1 = button => {
        displayTableau(1);
    }

    let tab2 = button => {
        displayTableau(2);

    }

    let tab3 = button => {
        displayTableau(3);

    }


    function displayTableau(tableauNum) {
        let tableaux = document.querySelectorAll('[id^="tableau"]');
        tableaux.forEach((tableau) => {
          if (tableau.id === `tableau${tableauNum}`) {
            tableau.removeAttribute("hidden");
          } else {
            tableau.setAttribute("hidden", "hidden");
          }
        });
      }