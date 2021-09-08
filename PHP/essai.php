<html>
<head> 
<title> DateTime </title>
</head>
<body>

<?php
$fp = fopen("ListeLiens.txt", "r");
$liens = fgets($fp, 4096);
print("$liens");
fclose($fp); 
?>

</body>
</html>