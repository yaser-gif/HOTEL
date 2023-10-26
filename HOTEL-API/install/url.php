<?php
$dbServer= $_GET['dbServer'];
$dbName= $_GET['dbName'];
$dbLogin= $_GET['dbLogin'];
$dbPassword= $_GET['dbPassword'];
echo test($dbServer,$dbName,$dbLogin,$dbPassword);
function test($dbServer,$dbName,$dbLogin,$dbPassword){
    try {
        $pdo = new PDO('mysql:host='.$dbServer.';dbname='.$dbName, $dbLogin, $dbPassword);
        // La conexión se ha realizado correctamente
        return json_encode(["success"=>true,"message"=>"Conexion exitosa con la Base de datos $dbName"]);
    } catch (PDOException $e) {
        // La conexión ha fallado, se captura la excepción y se muestra el mensaje de error
        echo "Error de conexión: " . $e->getMessage();
    }
}