<?php
session_start();
if(!isset($_SESSION['id'])){
   


echo 'bạn cần đăng nhập'; 

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="http://localhost/admin/style.css">
</head>
<body>
<div class="header">
        <div class="sub_header">
            <a href="../signin.php">log in</a><a href="../signout.php">log out</a>
        </div>

    </div>
</body>
</html>
<?php } else { ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>update</title>
</head>
<body>
    <?php $id = $_GET['id'];
     $connect = mysqli_connect('localhost','root','','20');
     mysqli_set_charset($connect,'utf8');
     $sql="select * from customers where id_cus = '$id'";
     
     $array_result = mysqli_query($connect,$sql);
     $row = mysqli_num_rows($array_result);
     if($row == 1){
     $result = mysqli_fetch_array($array_result);
     $error=mysqli_error($connect);
     echo $error; ?>
    <form action="update_process.php" method="POST">
        <input type="hidden" name="id" value="<?php echo $id ?>">
        name
        <input type="text" name="name" value="<?php echo $result['name'] ?>" ><br>
        gender
        <input type="number" name="gender" value="<?php echo $result['gender'] ?>"><br>
        date of birth
        <input type="date" name="birth" value="<?php echo $result['birth'] ?>"><br>
        phone 
        <input type="text" name="phone" value="<?php echo $result['phone'] ?>"><br>
        address
        <input type="text" name="address" value="<?php echo $result['address'] ?>"><br>
        
        email
        <input type="text" name="email" value="<?php echo $result['email'] ?>"><br>
        password
        <input type="text" name="password" value="<?php echo $result['password'] ?>"><br>
       
        
        <button type="submit">update</button>

    </form>
</html>
<?php }
else {
echo "không có người này";
}
} ?>