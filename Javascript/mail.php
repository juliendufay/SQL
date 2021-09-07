<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Envoi d'un message par formulaire</title>
</head>

<body>
    <?php
    $retour = mail('julien.dufay@sfr.fr', 'Envoi depuis la page Contact', $_POST['Yahooooooo'], 'From : Moi !!!');
    if ($retour) {
        echo '<p>Votre message a bien été envoyé.</p>';
    }
    ?>
</body>
</html>