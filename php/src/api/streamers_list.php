<?php
include './other/bd_connection.php';
include './other/fields.php';

$sql = "SELECT * FROM `streamers` S1 RIGHT JOIN `streamers-stats` S2 ON S1.id = S2.streamer";

if (isset($_GET["order_by"])) {
    $sql .= " ORDER BY " . $_GET["order_by"];
    $sql .= (isset($_GET["order_how"]) && $_GET["order_how"] == "desc") ? " DESC" : " ASC";
}

$result = $conn->query($sql);

$streamers = array();
while ( $rows = $result->fetch_assoc() ) {
    $streamers[] = array("streamer" => $rows);
}

echo json_encode(array("data_field" => $all_fields, "streamers" => $streamers));
?>