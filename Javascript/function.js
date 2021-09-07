// Affichage du contenu de tous les postes du tableau,
// Affichage du contenu d’un poste dont l’index est saisi au clavier,
// Affichage du maximum et de la moyenne des postes du tableau


// une fonction GetInteger pour lire un entier au clavier,
// une fonction InitTab pour créer et initialiser l’instance de tableau : le nombre de postes souhaité sera entré au clavier,
// une fonction SaisieTab pour permettre la saisie des différents postes du tableau,
// une fonction AfficheTab pour afficher tous les postes du tableau,
// une fonction RechercheTab pour afficher le contenu d’un poste de tableau dont le rang est saisi au clavier
// une fonction InfoTab qui affichera le maximum et la moyenne des postes.


var tab=[];

function GetInteger()
{
    var entier = prompt("Veuillez saisir un nombre");

    return entier;
}


function initTab()
{
       
    

      for (var i = 0; i < tab.length; i++)
      {  
         tab[i] = parseInt(prompt("veuillez saisir une valeur : "));    
        console.log(tab[i]);     
      }
     

}

GetInteger();

initTab();