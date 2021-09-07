var tableau = [];
var nombre_element=parseInt(prompt("Veuillez saisir un nombre"),10);


for(var i=0; i<=nombre_element-1; i++)
{
   element_ajouter=(prompt("Veuillez saisir un nombre"));

   tableau.push(element_ajouter+"</br>"+ "  " );
   document.write(i+1 + " | " +tableau[i]);

}

