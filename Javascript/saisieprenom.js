var n = 1
var prenom = ""
prenom = prompt("Saisissez le prénom N°" + n)
console.log(prenom + '</br>');
document.write(prenom + '</br>');
if (prenom !="")
do {
    n = n + 1
    prenom = prompt("Saisissez le prénom N°" + n );
    console.log(prenom + '</br>');
    document.write(prenom + '</br>');
} while (prenom!="");
console.log(n-1);    
document.write(n-1);
