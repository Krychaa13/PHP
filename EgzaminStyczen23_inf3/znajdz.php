<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="styl3.css?version=2" />
    <title>Kwiaty</title>
  </head>
  <body>
    <div class="Header">
      <h1>Grupa Polskich Kwiaciarni</h1>
    </div>
    <div class="Main">
      <div class="Left">
        <h2>Menu</h2>
        <ol>
          <li>
            <a href="index.html">Strona główna</a>
          </li>
          <li>
            <a href="https://www.kwiaty.pl/">Poznaj kwiaty</a>
          </li>
          <li>
            <a href="znajdz.php">Znajdz kwiaciarnie</a>
          </li>
          <ul>
            <li>w Warszawie</li>
            <li>w Malborku</li>
            <li>w Poznaniu</li>
          </ul>
        </ol>
      </div>
      <div class="Right">
        <h2>Strona dla miłośników kwiatów</h2>
        <form action="" method="POST">
          <label for="miasto">Podaj nazwe miasta</label>
          <input name="miasto" id="miasto" type="text" />
          <button type="submit">SPRAWDŹ</button>
        </form>
        <?php
        $db = mysqli_connect("localhost", "root", "", "kwiaciarnia");
        $inputer = $_POST["miasto"];

        $zap = "SELECT nazwa, ulica FROM kwiaciarnie WHERE miasto = '".$inputer."';";
        $qury = mysqli_query($db, $zap);

        while ($row = mysqli_fetch_array($qury)) {
          echo "<h3>" .$row["nazwa"] .", " .$row["ulica"] ."</h3>" ;
        };

        $q = mysqli_close($db);
        ?>
      </div>
    </div>
    <div class="Footer">
      <p>Strone opracował: 05300901602</p>
    </div>
  </body>
</html>
