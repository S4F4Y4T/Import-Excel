<?php 
    class DB{
        public $connection;

        public function __construct(){
            try{
                $dsn = "mysql:host=".host.";dbname=".dbname;
                $con = new PDO($dsn,username,password);
                $con->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
                $this->connection = $con;

            }catch(PDOException $e){

                die("Database connection lost").$e->getMessage();
                
            }
        }

        public function select(){
            $query = "SELECT * FROM csv";
            $sql = $this->connection->prepare($query);
            $sql->execute();
            return $sql->fetchAll();
        }

    }
?>