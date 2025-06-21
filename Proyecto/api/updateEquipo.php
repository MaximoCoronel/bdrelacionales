<?php
    header("Content-Type:application/json");

    if($_SERVER['REQUEST_METHOD'] !== 'PUT'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo PUT es permitido']);
    }


    require 'conexionSakila.php';

    $input = json_decode(file_get_contents('php://input'), true);
    $id = intval($input["id"]);
    $nombre = $conn->real_escape_string($input["nombre"]);
    $anillos = $conn->real_escape_string($input["anillos"]);
    $fundado = $conn->real_escape_string($input["fundado"]);

    $query = "UPDATE equipos SET nombre = ?, anillos = ?, last_update = NOW() WHERE id = ?";

    $st = $conn->prepare($query);

    if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "Error en la consulta" . $conn->error]);
        exit();
    }

    $st->bind_param("ssi", $nombres, $anillos, $fundado, $id);

    if($st->execute()){
        if($st->affected_rows > 0){
            echo json_encode(["message" => "Equipos actualizando correctamente"]);
        }else{
            http_response_code(404);
            echo json_encode(["error" => "No se encontró con el id: $id"]);
        }
    }else{
        http_response_code(500);
        echo json_encode(["error" => "Error al ejecutar" . $st->error]);
    }
    $st->close();
    $conn->close();
?>    
