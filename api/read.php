<?php
    $server = "localhost";
    $username = "root"; //THE DEFAULT USERNAME OF THE DATABASE
    $password = "";
    $dbname = "mindtrans";
    $con = mysqli_connect($server, $username, $password, $dbname) or die("unable to connect");
    $sql = "SELECT order_id FROM transaksi_mindtrans ORDER BY current_time DESC";
    $result = mysqli_query($con, $sql);
    $row = $result->fetch_assoc();
    echo $row["order_id"];
?>