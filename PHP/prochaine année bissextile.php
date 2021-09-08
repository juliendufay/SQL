<html>
<head> 
<title> bissextile </title>
</head>
<body>
<?php
function est_bissextile($annee) {
return((($annee & 3) == 0) && (($annee % 100 != 0) || ($annee % 400 == 0)));
}
 
for($I=2021;$I<=2025;$I++) {

 if(est_bissextile($I)) echo strval($I)."  la prochaine année bissextile<BR>";

}
// OR

$day = "";
for($i=0; $i<4; $i++)
{
    $day =  date("d", mktime(0, 0, 0, 2, 29, date("Y")+$i));
    if($day == 29)
    {
        $year = date("Y")+$i;
        break;
    }
}
echo "<p>The next leap year is 29th February $year</p>";

?>

</body>
</html>