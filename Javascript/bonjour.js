var nom = "";
var prénom = "";
var homme ="";

nom = window.prompt("Entrez votre nom");
prénom = window.prompt("Entrez votre prénom");
homme = window.confirm("Etes vous un homme ?");

if  (homme == true)
{
    console.log("bonjour Monsieur"+" " + nom + " "+ prénom + " " + "Bienvenue sur notre site web !")
    alert("bonjour Monsieur"+" " + nom + " "+ prénom + " " + "Bienvenue sur notre site web !");
    document.write("bonjour Monsieur"+" " + nom + " "+ prénom + " " + "Bienvenue sur notre site web !");
}
else
{
    console.log("bonjour Madame"+" " + nom + " "+ prénom + " " + "Bienvenue sur notre site web !")
    alert("bonjour Madame"+" " + nom + " "+ prénom + " " + "Bienvenue sur notre site web !");
    document.write("bonjour Madame"+" " + nom + " "+ prénom + " " + "Bienvenue sur notre site web !");
}
