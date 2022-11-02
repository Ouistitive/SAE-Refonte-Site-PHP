let actuPage = 1;
let actuJson;

const NB_ACTU_PAGE = 5;

fetch("actu.json")
  .then(response => response.json())
  .then(json => {
      actuJson = json;
      actuinit();
  });

function refreshNumPage(){
    document.getElementById("numP").innerHTML = `Page ${actuPage} sur ${Math.ceil(actuJson.length/NB_ACTU_PAGE)}`;
}

function suiv(){
    if(actuPage>=actuJson.length/NB_ACTU_PAGE) return;
    actuPage++;
    load();
}

function prec(){
    if(actuPage==1) return;
    actuPage--;
    load();
}

function load(){
    const actus = document.getElementById("texte");
    actus.innerHTML = "";
    let i = (actuPage-1)*NB_ACTU_PAGE;
    while(i<actuJson.length && i<actuPage*NB_ACTU_PAGE){
        if(actuJson[i].images.length == 0){
            actus.innerHTML = actus.innerHTML + `<div><i onclick="sup(${i});" class="fa-solid fa-trash-can"></i><h2>${actuJson[i]["titre"]}</h2>
        <p>${actuJson[i]["p"]}</p></div>`;
        }
        else{
            actus.innerHTML = actus.innerHTML + `<div><i onclick="sup(${i});" class="fa-solid fa-trash-can"></i><img src="${actuJson[i].images[0]}"><h2>${actuJson[i]["titre"]}</h2>
        <p>${actuJson[i]["p"]}</p></div>`;
        }
        
        i++;
    }
    refreshNumPage();
}

function sup(numActu){
    fetch('/delete?i='+numActu, {
      method: 'POST',
      body: numActu,
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      }
      })
      .catch(error => console.error('Error:', error)); 
        
    window.location.reload();
}




function actuinit(){
    document.getElementById("pprec").addEventListener("click", prec);
    document.getElementById("psuiv").addEventListener("click", suiv);
    
    load();
}


window.addEventListener("load", actuinit);