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
console.log("la somme est" + " " + somme);
console.log(index-1 + " nombres ont été rentrés");
console.log("la moyenne des nombres est" + " " + moyenne);

