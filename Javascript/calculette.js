var nb1 = prompt("Donnez un nombre");
var nb2 = prompt("Donnez un second nombre");
var resultat = "";
nb1 = parseInt(nb1);
nb2 = parseInt(nb2);
signe = prompt("Donnez un opérateur (+ - * /)");
switch (signe)
 {
    case "+" :
      resultat = nb1 + nb2;
        break;
    case "-" :
      resultat = nb1 - nb2;
        break;
    case "/" :
      resultat = nb1 / nb2;
        break;
    case "*" :
      resultat = nb1 * nb2;
        break;
    }

    if (signe != "+" || signe != "-" || signe != "*" || signe != "/") 
    {
        document.write("ERREUR");  
    }
        else
    {
        document.write(resultat);
    }
