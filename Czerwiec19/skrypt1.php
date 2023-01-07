<?php
$cnx = mysqli_connect('hostname', 'username', 'password', 'database_name');

if (!$cnx) {
    die('Błąd połączenia: ' . mysqli_connect_error());
}

$query = file_get_contents('kwerendy.txt');

$result = mysqli_query($cnx, $query);

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<li>" . $row['product_name'] . "</li>";
    }  
} else {
    echo "<li>Brak wyników</li>";
}

mysqli_close($cnx);
?>