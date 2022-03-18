<?php 
session_start();
$remember =  $_POST['remember'];
$email = $_POST['email'];
$password = $_POST['password'];

$connect = mysqli_connect('localhost','root','','20');
mysqli_set_charset($connect,'utf8');
$sql="select count(*) from employees where email = '$email' and password = '$password' ";

$array_result= mysqli_query($connect,$sql);
$result = mysqli_fetch_array($array_result);

if($result['count(*)'] == 1){
    
    $sql="select * from employees where email = '$email' and password = '$password' ";
    $array_result= mysqli_query($connect,$sql);
    $result = mysqli_fetch_array($array_result); 
    $id = $result['id_empl'];   
    $_SESSION['id'] = $id;
    $_SESSION['email'] = $result['email'];
    if($remember){
        $token = uniqid('user_',true);
        
        $sql = "update employees
        set token = '$token'
        where id_empl ='$id' ";
        
        mysqli_query($connect,$sql);
        
        setcookie('remember',$token, time() + 60*60*24*30);
        
    }
    header("location:root");
    exit;
}
$_SESSION['error'] = 'sai cái gì rồi pro';

header("location:signin.php");
mysqli_close($connect);
