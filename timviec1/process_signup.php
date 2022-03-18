<?php
$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];

$connect = mysqli_connect('localhost','root','','20');
mysqli_set_charset($connect,'utf8');
$sql="select count(*) from customers where email = '$email' ";

$array_result= mysqli_query($connect,$sql);
$result = mysqli_fetch_array($array_result);

if($result['count(*)'] == 1){
    
    header("location:signup.php");
    session_start();
    $_SESSION['error'] = 'tài khoản đã tồn tại';
    exit;

}
else {

$sql=" insert into customers(name,email,password) values ('$name','$email','$password')";

mysqli_query($connect,$sql);
session_start();
$_SESSION['error'] = 'bạn đã đăng ký thành công mời đăng nhập';

header("location:signin.php");
mysqli_close($connect);
}