<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="styl_1.css" />
    <title>Wędkowanie</title>
  </head>
  <body>
    <div class="baner">
      <h1>Portal dla wędkarzy</h1>
    </div>
    <div class="srodek">
      <div class="lewa">
        <div class="gora">
          <h3>Ryby zamieszkujace rzeki</h3>
          <ol>
            <?php
            include_once 'skrypt1.php'

            skrypt1();
            ?>
          </ol>
        </div>
        <div class="dol">
          <h3>Ryby drapierzne naszych wód</h3>
          <table>
            <tr>
              <th>L.p.</th>
              <th>Gatunek</th>
              <th>Wystepowanie</th>
            </tr>
            <?php
            include_once 'skrypt2.php'

            skrypt2();
            ?>

          </table>
        </div>
      </div>
      <div class="prawa">
        <img src="ryba1.jpg" alt="Sum" />
        <a href="kwerendy.txt">Pobierz kwerendy</a>
      </div>
    </div>
    <div class="stopka">
      <p>Strone wykonal: 00000000000</p>
    </div>
  </body>
</html>
