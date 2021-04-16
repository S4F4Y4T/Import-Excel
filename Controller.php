<?php

//import.php

include 'vendor/autoload.php';

$connect = new PDO("mysql:host=localhost;dbname=excel", "root", "");

if($_FILES["import_excel"]["name"] != '')
{
 $allowed_extension = array('xls', 'csv', 'xlsx');
 $file_array = explode(".", $_FILES["import_excel"]["name"]);
 $file_extension = end($file_array);

 if(in_array($file_extension, $allowed_extension))
 {
  $file_name = time() . '.' . $file_extension;
  move_uploaded_file($_FILES['import_excel']['tmp_name'], $file_name);

  //$spreadsheet = \PhpOffice\PhpSpreadsheet\IOFactory::load($file_name);

  $file_type = \PhpOffice\PhpSpreadsheet\IOFactory::identify($file_name);
  $reader    = \PhpOffice\PhpSpreadsheet\IOFactory::createReader($file_type);
  $reader->setReadDataOnly(TRUE); $reader->setReadEmptyCells(FALSE);
  $spreadsheet = $reader->load($file_name);


  unlink($file_name);
  $worksheet = $spreadsheet->getActiveSheet();
  $rows = [];
  foreach ($worksheet->getRowIterator() AS $row) {
      $cellIterator = $row->getCellIterator();
      $cellIterator->setIterateOnlyExistingCells(FALSE); // This loops through all cells,
      $cells = [];
      foreach ($cellIterator as $cell) {
          $cells[] = $cell->getValue();
      }
      $rows[] = $cells;
  }

  $body = [];
  $brand = [];
  $model = [];

  for($i = 2; $i < count($rows); $i++){
    $body[]  = $rows[$i][0];  //all truck body on array
    $brand[] = $rows[$i][1];  //all brand name  on array

    for($j=2; $j < sizeof($rows[$i]); $j++){
      $model[] = $rows[$i][$j];
    }    
     
  }


  //insert into truck body
  for($i = 0; $i < count($body); $i++){
    if(isset($body)){
      $query = 'SELECT * FROM gtc_body WHERE body_name = "' . $body[$i] . '"';
      $statement = $connect->prepare($query);
      $statement->execute();
      $total_data = $statement->rowCount();
      //echo var_dump(count($valid));
  
      if($total_data == 0){
        
        $insert_data = array(
          ':body_name'  => $body[$i]
         );
      
         $query = "
         INSERT INTO gtc_body 
         (body_name) 
         VALUES (:body_name)
         ";
      
         $statement = $connect->prepare($query);
         $statement->execute($insert_data);
      }
    }
  }

  //insert into truck brand
  for($i = 0; $i < count($brand); $i++){
    if(isset($brand)){
      $query = 'SELECT * FROM gtc_brand WHERE brand_name = "' . $brand[$i] . '"';
      $statement = $connect->prepare($query);
      $statement->execute();
      $total_data = $statement->rowCount();
      //echo var_dump(count($valid));
  
      if($total_data == 0){
        
        $insert_data = array(
          ':brand_name'  => $brand[$i]
         );
      
         $query = "
         INSERT INTO gtc_brand 
         (brand_name) 
         VALUES (:brand_name)
         ";
      
         $statement = $connect->prepare($query);
         $statement->execute($insert_data);
      }
    }
  }

  //insert into truck model
  for($i = 0; $i < count($model); $i++){
    if(isset($model)){
      $query = 'SELECT * FROM gtc_model WHERE model_name = "' . $model[$i] . '"';
      $statement = $connect->prepare($query);
      $statement->execute();
      $total_data = $statement->rowCount();
      //echo var_dump(count($valid));
  
      if($total_data == 0){
        
        $insert_data = array(
          ':model_name'  => $model[$i]
         );
      
         $query = "
         INSERT INTO gtc_model 
         (model_name) 
         VALUES (:model_name)
         ";
      
         $statement = $connect->prepare($query);
         $statement->execute($insert_data);
      }
    }
  }
  
  unset($rows[0]);
  unset($rows[1]); 

  foreach($rows as $row){
    //Get each rows as an array

    $truck_body = $row[0];
    if(!empty($truck_body)){
        $query = 'SELECT s_no FROM gtc_body WHERE body_name = "' . $truck_body . '"';
        $statement = $connect->prepare($query);
        $statement->execute();
        $body_no = $statement->fetchAll(PDO::FETCH_ASSOC);
        $body_id = $body_no[0]['s_no'];
    }


    $truck_brand = $row[1];
    if(!empty($truck_brand)){
        $query = 'SELECT s_no FROM gtc_brand WHERE brand_name = "' . $truck_brand . '"';
        $statement = $connect->prepare($query);
        $statement->execute();
        $brand_no = $statement->fetchAll(PDO::FETCH_ASSOC);
        $brand_id = $brand_no[0]['s_no'];
    }

    //remove body and brand data from array
    unset($row[0]);
    unset($row[1]);

    $models_array = $row;

    for($c = 2; $c <= count($models_array)+1; $c++){

      $model_name = $models_array[$c];

      if($model_name !== NULL){

        $query = 'SELECT s_no FROM gtc_model WHERE model_name = "' . $model_name . '"';
        $statement = $connect->prepare($query);
        $statement->execute();
        $model_no = $statement->fetchAll(PDO::FETCH_ASSOC);
        $model_id = $model_no[0]['s_no'];

        if(isset($body_id) AND isset($brand_id) AND isset($model_id)){
          $query = 'SELECT * FROM gtc_brand_body_model WHERE body_sno = "' . $body_id . '" AND brand_sno = "' . $brand_id . '" AND model_sno = "' . $model_id . '"';
          $statement = $connect->prepare($query);
          $statement->execute();
          $total_data = $statement->rowCount();
          //echo var_dump(count($valid));

          if($total_data == 0){

            $insert_data = array(
              ':brand_sno'  => $brand_id,
              ':body_sno'   => $body_id,
              ':model_sno'  => $model_id
             );
          
             $query = "
             INSERT INTO gtc_brand_body_model 
             (brand_sno,body_sno,model_sno) 
             VALUES (:brand_sno,:body_sno,:model_sno)
             ";
          
             $statement = $connect->prepare($query);
             if($statement->execute($insert_data)){
              $message = '<div class="alert alert-success">Data imported successfully</div>';
             }
          }
        }

      }
    }

  }

  }
 else
 {
  $message = '<div class="alert alert-danger">Only .xls .csv or .xlsx file allowed</div>';
 }
}
else
{
 $message = '<div class="alert alert-danger">Please Select File</div>';
}

echo isset($message) ? $message : '';

?>