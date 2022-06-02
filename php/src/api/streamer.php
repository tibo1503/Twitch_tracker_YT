<?php
include './other/fields.php';

$order_by = "id";

$order_by = isset($_GET["order_by"]) ? $_GET["order_by"] : "id";
eaz

$sql = "SELECT * FROM `streamers` S1 RIGHT JOIN `streamers-stats` S2 ON S1.id = S2.streamer;";
$result = $conn->query($sql);
while ( $rows = $result->fetch_assoc() ) {
    print_r($rows);//echo "{$row['field']}";
}

echo json_encode($result);
?>