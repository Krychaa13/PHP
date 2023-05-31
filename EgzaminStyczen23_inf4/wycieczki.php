<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Wycieczki po Europie</title>
    <link rel="stylesheet" href="./styl4.css" />
  </head>
  <body>
    <div class="baner">
      <h1>BIURO TURYSTYCZNE</h1>
    </div>
    <div class="dane">
      <h3>Wycieczki, na które są wolne miejsca</h3>
      <ul>
      <?php
        $conn = mysqli_connect('localhost','root','','baza3');
        $query = "SELECT id, dataWyjazdu, cel, cena FROM wycieczki WHERE dostepna = 1";
        $result = mysqli_query($conn, $query);
        while($row = mysqli_fetch_array($result)){
          echo '<li>'.$row['id']."dnia <dataWyjazdu> jedziemy do ".$row['cel']." cena: ".$row['cena'].'</li>';
        }
      ?>
      </ul>
    </div>
    <div class="content">
      <div class="lewy">
        <h2>Bestselery</h2>
        <table>
          <tr>
            <td>Wenecja</td>
            <td>kwiecień</td>
          </tr>
          <tr>
            <td>Londyn</td>
            <td>lipiec</td>
          </tr>
          <tr>
            <td>Rzym</td>
            <td>wrzesień</td>
          </tr>
        </table>
      </div>
      <div class="srodek">
        <h2>Nasze zdjęcia</h2>
        <?php
            $query = "SELECT nazwaPliku, podpis FROM zdjecia ORDER BY podpis DESC";
            $result = mysqli_query($conn, $query);
            while($row = mysqli_fetch_array($result)){
              echo '<img href="'.$row['nazwaPliku'].'" alt="'.$row['podpis'].'">';
            }
            $kill = mysqli_close($conn)
        ?>
      </div>
      <div class="prawy">
        <h2>Skontaktuj się</h2>
        <a href="mailto:turystyka@wycieczki.pl">napisz do nas</a>
        <p>111 222 333</p>
      </div>
    </div>
    <div class="stopka">
      <p>Stronę wykonał: 00000000000</p>
    </div>
  </body>
</html>
