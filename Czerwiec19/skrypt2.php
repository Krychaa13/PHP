<?php
$db_connection = mysqli_connect("localhost", "username", "password", "database_name");

if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    exit();
}

$product_name = $_POST["product_name"];

$query = "SELECT price FROM products WHERE name = '$product_name'";

$result = mysqli_query($db_connection, $query);

if (!$result) {
    echo "Query failed: " . mysqli_error($db_connection);
    exit();
}

$row = mysqli_fetch_assoc($result);
$price = $row["price"];

$discounted_price = $price * 0.85;

$discounted_price = round($discounted_price, 2);

echo "Discounted price: $discounted_price";

mysqli_close($db_connection);

?>