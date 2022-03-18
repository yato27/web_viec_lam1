<?php 
session_start();
if(isset($_COOKIE['remember'])){
    $token = $_COOKIE['remember'];
    $connect = mysqli_connect('localhost','root','','20');
    mysqli_set_charset($connect,'utf8');
    $sql="select * from employees where token = '$token'";
   
    $array_result= mysqli_query($connect,$sql);
    $row = mysqli_num_rows($array_result);
    if($row ==1){
    $result = mysqli_fetch_array($array_result);
    $_SESSION['id'] = $result['id_empl'];
    $_SESSION['name'] = $result['name'];
    }
    
}
if(isset($_SESSION['id'])){
        header('location:root');
        exit;} 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    
    if (isset($_SESSION['error'])){
        echo $_SESSION['error'];
        unset($_SESSION['error']);
        
    } ?>
    <form action="process_signin.php" method="post">
        email 
        <input type="text" name="email">
        password 
        <input type="text" name="password"><br>
        remember pass 
        <input type="checkbox" name="remember" id="" >
        <button>sign in </button>
    </form>
</body>
</html>