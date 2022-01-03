<?php
include('db.php');
include('function.php');
if(isset($_POST["merch_id"]))
{
 $output = array();
 $statement = $connection->prepare(
  "SELECT * FROM merch
  WHERE id = '".$_POST["merch_id"]."' 
  LIMIT 1"
 );
 $statement->execute();
 $result = $statement->fetchAll();
 foreach($result as $row)
 {
  $output["merch_name"] = $row["merch_name"];
  $output["total_stock"] = $row["total_stock"];
 }
 echo json_encode($output);
}
?>
   