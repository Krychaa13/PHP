<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Wynajem pokoi</title>
    <link rel="stylesheet" href="./styl2.css?version=2" />
  </head>
  <body>
    <div class=Main_C>
      <a href="cennik.html">CENNIK</a>
      <table>
      <?php
      $db = mysqli_connect("localhost", "root", "", "wynajem");
      $zapytanie = "SELECT * FROM pokoje";

      $qur = mysqli_query($db, $zapytanie);

      while ($row = mysqli_fetch_array($qur) ) {
        echo "<tr>";
        echo "<td>" . $row['id'] . "</td>";
        echo "<td>" . $row['nazwa'] . "</td>";
        echo "<td>" . $row['cena'] . "</td>";
        echo "</tr>";
      }
    
      ?>  
      </table>
    </div>
  </body>
</html>
