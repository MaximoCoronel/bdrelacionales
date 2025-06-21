<?php

$host = 'localhost';
$user = 'root';
$pass = '';
$dbname = 'basquetbol';

$conn = new mysqli($host,$user,$pass,$dbname);

if($conn->connect_error){
    http_response_code(500);
    echo json_encode(['error' => 'error de conexion: ' . $conn->connect_error]);
    exit;
}

$sql = "SELECT * FROM equipos";
$result= $conn->query($sql);

$equipos =[];

if($result && $result->num_rows > 0){
    while($row = $result->fetch_assoc()){
        $equipos[] = $row;
    }
}
$conn ->close();

header("content-type: application/json");
echo json_encode($equipos);

 
?>