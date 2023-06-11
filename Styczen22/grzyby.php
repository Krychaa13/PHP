<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grzybobranie</title>
    <link rel="stylesheet" href="style.css?v=2">
</head>
<body>
    <div class="Header">
        <div class="HeaderLeft">
            <h1>Czas na grzyby!</h1>
        </div>
        <div class="HeaderRight">
            <a href="podgrzybek.jpeg"><img class="img2" src="podgrzybek.jpeg" alt="Grzybobranie"></a>
        </div>
    </div>
    <div class="Main">
        <div class="Lewy">
            <h3>Grzyby jadalne</h3>
            <?php
            $db = mysqli_connect("localhost", "root", "", "grzybobranie");

            $zapytanie1 = mysqli_query($db, "SELECT id, nazwa, potoczna FROM grzyby WHERE jadalny = 1;");

            while ($row = mysqli_fetch_array($zapytanie1)) {
                echo "<p>". $row['id'] . ". " . $row['nazwa'] ." (". $row['potoczna']. ") ". "</p> <br>";
            };
            ?>
            <h3>Polecamy do zup</h3>
            <?php
            $zapytanie2 = mysqli_query($db, 'SELECT g.potoczna, r.nazwa FROM grzyby AS g JOIN rodzina AS r ON g.rodzina_id = r.id JOIN potrawy AS p on g.potrawy_id = p.id WHERE p.nazwa = "zupa";');

            while ($row = mysqli_fetch_array($zapytanie2)) {
                echo "<ul>" . $row['potoczna'] . " rodzina: " . $row['nazwa'] . "</ul>";
            }
            ?>
        </div>
        <div class="Prawy">
            <?php
            $zapytanie3 = mysqli_query($db, "SELECT nazwa_pliku, nazwa FROM grzyby;");

            while ($row = mysqli_fetch_array($zapytanie3)) {
                echo '<img class="img1" src=' . $row['nazwa_pliku'] . ' alt=' . $row['nazwa'] . '>';

            }
            ?>
        </div>
    </div>
    <div class="Footer">
        <p>Autor: 05300901602</p>
    </div>
</body>
</html>