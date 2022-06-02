<?php
$sql = "SELECT * FROM `streamers` S1  RIGHT JOIN `streamers-stats` S2 ON S1.id = S2.streamer;";
$result = $conn->query($sql);
while ( $rows = $result->fetch_assoc() ) {
    print_r($rows);//echo "{$row['field']}";
    echo "<br>";
}

echo json_encode($result);