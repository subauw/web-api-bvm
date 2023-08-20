<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mindtrans";

$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "select order_id from transaksi_mindtrans ORDER BY transaction_time DESC LIMIT 1;";
$result = $conn->query($sql);
$row = $result->fetch_assoc();
echo $row["order_id"];

$conn->close();
?>