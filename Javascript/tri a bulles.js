var tableau = [];
var nb=parseInt(prompt("Veuillez saisir un nombre"),10);
var tab = new Array(nb);

for(var i = 0; i < tab.length; i++){
tab[i] = parseInt(prompt("veuillez saisir une valeur : "))

}
console.log(tab)
var MaxTableau = nb;
var K,L,I,J;
var Tableau = tab;
document.write("Avant:");
for(K = 0; K < MaxTableau; K++) document.write(Tableau[K],", ");

for(I = MaxTableau - 2;I >= 0; I--) {
   for(J = 0; J <= I; J++) {
       if(Tableau[J + 1] < Tableau[J]) {
           var t = Tableau[J + 1];
           Tableau[J + 1] = Tableau[J];
           Tableau[J] = t;
       }
   }
}

document.write("<br>Après:");
for(L = 0; L < MaxTableau; L++) {
   document.write(Tableau[L],", ");
}
document.write("<br>");
