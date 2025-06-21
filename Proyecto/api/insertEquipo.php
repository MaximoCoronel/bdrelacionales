<?php

       header("Content-Type: application/json");

       if($_SERVER['REQUEST_METHOD'] !== 'POST'){
        http_response_code(405);
        echo json_encode(['error' => 'solo metodo POST es permitido']);
         
    
}

    require 'conexionSakila.php';


    $data = json_decode(file_get_contents('php://input'), true);
    $nombre = $data['nombre'];
    $anillos = $data['anillos'];
    $fundado = $data['fundado'];

    $query = $conn->prepare("INSERT INTO equipos (nombre, anillos, fundado) VALUES (?, ?, ?)");

    if(!$query){
        http_response_code(500);
        echo json_encode(["error" => "Ocurrio un error"]);
        exit;

}

    $query->bind_param("sis", $nombre, $anillos, $fundado);

    if($query->execute()){
        echo json_encode(["mensaje" => "Actor insertado correctamente", "equipos" => $query->insert_id]);

    }else{
        http_response_code(500);
        echo json_encode(["error" => "Fallo la incerción" . $query->error]);

    }

    $query->close();
    $conn->close();
    
    
    ?>