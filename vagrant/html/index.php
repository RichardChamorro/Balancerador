<?php
$servername = "139.177.204.53";
$username = "richard";
$password = "root";
$dbname = "paginaweb";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$sql = "SELECT * FROM usuarios";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table border='1'>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Ciudad</th>
            </tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["id"] . "</td>
                <td>" . $row["nombre"] . "</td>
                <td>" . $row["apellido"] . "</td>
                <td>" . $row["ciudad"] . "</td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "0 resultados";
}
$conn->close();
?>
