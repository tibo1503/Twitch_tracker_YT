<?php
include './other/bd_connection.php';

$sql = `SELECT name, logo FROM 'streamers' `;


if (isset($_GET["sub_name"])) {
    $sql .= `WHERE name LIKE "%` . $_GET["sub_name"] . `%";`;
} else {
    $sql .= ` LIMIT 0`;
}

$result = $conn->query($sql);

$streamers = array();
while ( $rows = $result->fetch_assoc() ) {
    $streamers[] = array("streamer" => $rows);
}

echo json_encode($streamers);
?>