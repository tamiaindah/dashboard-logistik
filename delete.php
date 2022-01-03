<?php

include('db.php');
include("function.php");

if(isset($_POST["merch_id"]))
{
 $statement = $connection->prepare(
  "DELETE FROM merch WHERE id = :id"
 );
 $result = $statement->execute(
  array(
   ':id' => $_POST["merch_id"]
  )
 );
 
 if(!empty($result))
 {
  echo 'Data Deleted';
 }
}



?>
 