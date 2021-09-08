<html>
 <head>
  <title>EX 3</title>
 </head>
    <body> 
        <?php 
echo "<table border=5><th>x</th>";
$max=20;
for($i=0;$i<=$max;$i++)
  echo "<th>$i</th>";
    echo "</tr>\n";
        for($j=0;$j<=$max;$j++)
{
    echo "<tr><th>$j</th>";
        for($i=0;$i<=$max;$i++)
{
    echo "<td>".($j*$i)."</td>";
}
}
?>
        </table>
    </body>
</html>