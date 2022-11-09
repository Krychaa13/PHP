<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <title>"Restauracja Wszytskie Smaki"</title>
  </head>
  <body>
    <div class="strona">
      <div class="baner">
        <h1>Witamy w restauracji "Wszystkie Smaki"</h1>
      </div>
      <div class="panele">
        <div class="lewa">
          <jpg></jpg>
        </div>
        <div class="prawa">
          <h4>U nas dobrze zjesz</h4>
          <ol>
          <?php
                require_once 'rezerwacja.php';
                wczytaj("localhost", "root", "", "baza");
            ?>
          </ol>
        </div>
      </div>
      <form class="dol" action="rezerwacja.php" method="POST">
        <h2>Zarezerwuj stolik on-line</h2>
        <input type="text" name="data" id="data" />
        <p>Ile osób?</p>
        <input type="number" name="ilosc" id="ilosc" />
        <p>Twój numer telefonu</p>
        <input type="text" name="telefon" id="telefon" />
          <div class="">
            <input type="checkbox" />
            <p>Zgadzam sie na przetwazanie moich danych.</p>
          </div>
        </div>
        <input type="reset" class="button" onclick="click">WYCZYŚĆ</input>
        <input type="submit" class="button" onclick="click">REZERWUJ</input>
      </form>
      <div class="stopka"></div>
    </div>
  </body>
</html>
