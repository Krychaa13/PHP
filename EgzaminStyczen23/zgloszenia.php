<?php
$db = mysqli_connect('localhost', 'root','' , 'wedkarstwo');
$lowisko = $_POST['lowisko'];
$data = $_POST['data'];
$sedzia = $_POST['sedzia'];

$zapytanie = "INSERT INTO zawody_wedkarskie (Karty_wedkarskie_id, Lowisko_id, data_zawodow, sedzia)
VALUES (0,".$lowisko. "," ."'".$data."'".","."'".$sedzia."'". ");" ;

$res = mysqli_query($db, $zapytanie);

mysqli_close($db);
?>