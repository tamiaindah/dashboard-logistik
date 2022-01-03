<?php
include('db.php');
include('function.php');
if(isset($_POST["operation"]))
{
 if($_POST["operation"] == "Add")
 {
  $statement = $connection->prepare("
   INSERT INTO merch (merch_name, total_stock) 
   VALUES (:merch_name, :total_stock)
  ");
  $result = $statement->execute(
   array(
    ':merch_name' => $_POST["merch_name"],
    ':total_stock' => $_POST["total_stock"],
   )
  );
  if(!empty($result))
  {
   echo 'Data Inserted';
  }
 }
 if($_POST["operation"] == "Edit")
 {
  $statement = $connection->prepare(
   "UPDATE merch 
   SET merch_name = :merch_name, total_stock = :total_stock  
   WHERE id = :id
   "
  );
  $result = $statement->execute(
   array(
    ':merch_name' => $_POST["merch_name"],
    ':total_stock' => $_POST["total_stock"],
    ':id'   => $_POST["user_id"]
   )
  );
  if(!empty($result))
  {
   echo 'Data Updated';
  }
 }
}

?>