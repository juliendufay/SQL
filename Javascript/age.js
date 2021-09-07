var année = "";
année = prompt("Donnez votre année de naissance")
année = 2021 - année
document.write("Vous avez" + " " + année + " " + "ans cette année" + '</br>');
if (année>18) {
    document.write("Vous êtes majeur" +'</br>');
} else {
    document.write("Vous n'êtes pas encore majeur" +'</br>');
}
