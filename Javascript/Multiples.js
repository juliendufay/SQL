var N = parseInt(prompt("Saisissez un nombre"));
var X = parseInt(prompt("Saisissez un nombre"));
var resultat; 
for (N=1 ; N <=X ; N++)
{
    resultat = N*X;
    document.write(N + "" + "X" + "" + X + " = "+resultat+ "<br>");
}
