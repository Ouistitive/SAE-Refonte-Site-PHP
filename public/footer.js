const footer = {
    "telephone": false,
    "mail": false,
    "adresse": false,
    "temps": false
    
}



function trigger(elemId){
    let els = document.getElementsByClassName("footer-element");
    if(footer[els[elemId].id]){
        els[elemId].querySelector(".footer-info").className = "footer-info collapsed";
        footer[els[elemId].id] = false;
    }  
    else
        for(let i = 0; i<4;i++){
            if(i==elemId){
                els[i].querySelector(".footer-info").className = "footer-info show";
                footer[els[i].id] = true;
            }
            else{
                els[i].querySelector(".footer-info").className = "footer-info collapsed";
                footer[els[i].id] = false;
            }
        }
            
}


function footerinit(){
    for(let i = 0; i<4;i++)
        document.getElementsByClassName("footer-element")[i].addEventListener("click", ()=>{trigger(i);});
}










window.addEventListener("load", footerinit);