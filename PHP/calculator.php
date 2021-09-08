<?php 

function calculator(int $f1,int $f2,$p){
if(isset($f1,$f2,$p)){
    switch($p){
        case "+":
         echo $f1+$f2;
         break ;
        case "-":
         echo $f1-$f2;
         break ;
        case "x":
         echo $f1*$f2;
         break ;
        case "/":
         echo $f1/$f2;
         break ;
        
    }
}

}


?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculator</title>
</head>
<body>
    


    <form action="" method=GET>
    
    <input type="number" name ="chiffre1" id = "number" placeholder="Entrer premier chiffre"><br>
    <input type="number" name ="chiffre2" id = "number" placeholder="Entrer deuxième chiffre"><br>
    <select name="operation" ><option value="">--Sélectionner un signe--</option>
    <option value="+">+</option>
    <option value="-">-</option>
    <option value="x">x</option>
    <option value="/">/</option>
    </select>
<input type="submit" value = "=">
    
    </form>
    

    <?php calculator($_GET["chiffre1"],$_GET["chiffre2"],$_GET["operation"]) ?>
</body>
</html>