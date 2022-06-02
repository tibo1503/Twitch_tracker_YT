<?php
include './other/bd_connection.php';

$sql = "SELECT COLUMN_NAME as column_name 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE (TABLE_NAME = N'streamers-stats') AND COLUMN_NAME NOT IN (\"id\",\"date\",\"streamer\")
;";
$result = $conn->query($sql);

$array_before_json = array();

while ( $rows = $result->fetch_assoc() ) {
    //print_r($rows["column_name"]);//echo "{$row['field']}";
    //echo "<br>";
    $array_before_json[] = $rows["column_name"];
}

$json_fields = json_encode($array_before_json);