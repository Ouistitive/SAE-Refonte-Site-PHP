const express = require('express');
const path = require('path');
const fileupload = require('express-fileupload');
const fs = require('fs');
const actus = require('./public/actu.json');
const bodyParser = require('body-parser');



let initial_path = path.join(__dirname, "public");

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));


app.use(express.static(initial_path));
app.use(fileupload());

app.get('/', (req, res) => {
    res.sendFile(path.join(initial_path, "index.html"));
    
});

app.post('/delete', (req, res) => {
    let numActu = req.query.i;
    actus.splice(numActu, 1);

    fs.writeFile("public/actu.json", JSON.stringify(actus), err => {
         
        
        if (err) throw err; 
       
        console.log(actus); 
    });

    
    return res.redirect("/actualites.html/");
});

app.post('/actualites', (req, res) => {
    
    let actu = {
        "titre": req.body.titre,
        "p": req.body.p,
        "images": [],
        "auteur": "CASBT"
        
    };
    console.log(actu);

    if(actu.titre == "") return res.redirect("/actualites.html");;
   
    actus.unshift(actu);
       
    fs.writeFile("public/actu.json", JSON.stringify(actus), err => {
         
        
        if (err) throw err; 
       
        console.log("Done writing"); 
    });

    
    return res.redirect("/actualites.html");
    
});



app.listen("3000", () => {
    console.log('listening......');
});
