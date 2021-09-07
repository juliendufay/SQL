// var somme=0;
// var saisie;
// var moyenne=0;
// var index=0;

// while(saisie!="0")
// {

//     saisie=parseInt(prompt("Entrez votre nombre\n Entrez 0 pour terminer"),10);
 
//     somme+=saisi;
//     index++;
//     moyenne = somme/(index-1);

// }
// concole.log(somme);
// concole.log(moyenne);

var somme=0;
var saisie=parseInt("");
var index=0;
var moyenne=0;

while(saisie!="0")
{

    saisie=parseInt(window.prompt("Entrez votre nombre -- Entrez 0 pour terminer"),10);
 
    somme=somme+parseInt(saisie);
    index++;
    moyenne=somme/(index-1);

}
console.log(somme);
console.log(index-1);
console.log(moyenne);
