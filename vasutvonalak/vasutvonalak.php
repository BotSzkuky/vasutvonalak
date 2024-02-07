<?php
$host = "localhost"; 
$username = "root"; 
$password = "";     
$database = "vasutvonalak";

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $cityName = $_POST["cityName"];

    // SQL to insert data into table
    $sql = "INSERT INTO indulas (Varosok)
            VALUES ( '$cityName')";

    if ($conn->query($sql) === TRUE) {
        echo "";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $sql2 = "INSERT INTO erkezes (Varosok)
            VALUES ( '$cityName')";

    if ($conn->query($sql2) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql2 . "<br>" . $conn->error;
    }
}

$conn->close();
?>