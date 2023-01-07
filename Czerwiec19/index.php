<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Sklep papierniczy</title>
</head>
<body>
    <div>
        <div class="baner">
            <h1>W naszym sklepie internetowym kupisz najtaniej</h1>
        </div>
        <div class="lewy">
            <h3>Promocja 15% obejmuje artukuły:</h3>
            <ul>
                <?php 
                include 'skrypt1.php';
                ?>
            </ul>
        </div>
        <div class="srodkowy">
            <h3>Cena wybranego artykulu w promocji</h3>
            <form>
                <label for="products">Wybierz produkt:</label>
                <select id="products" name="products">
                    <?php
                    $cnx = mysqli_connect('hostname', 'username', 'password', 'database_name');

                    if (!$cnx) {
                        die('Błąd połączenia: ' . mysqli_connect_error());
                    }

                    $query = file_get_contents('kwerendy.txt');

                    $result = mysqli_query($cnx, $query);

                    if (mysqli_num_rows($result) > 0) {
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<option>" . $row['product_name'] . "</option>";
                        }
                    } else {
                        echo "<option>Brak wyników</option>";
                    }

                    mysqli_close($cnx);
                    ?>
                </select>
            </form>
        </div>
        <div class="prawy"></div>
        <div class="stopka"></div>
    </div>
    
</body>
</html>