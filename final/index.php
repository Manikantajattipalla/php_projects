<?php
session_start();
if (!isset($_SESSION["user"])) {
   header("Location: login.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
    
     integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="style1.css">
    <link rel="icon" href="blood.png">
    <title>BLOOD DONATION CAMP</title>
     <style>
        body{
            background-attachment: fixed;
            background-color:rgb(117, 5, 5);
            
             
            
        }
        /* div:hover{
            padding:right;
        } */
     </style>
</head>
<body >
    <div >
    <h1 style=" font-weight:bold; color:black;background-color:red; padding:40px;">BLOOD DONATION CAMP</h1>
    </div>
    <?php
include('index1.php');
?>
</body>
</html>