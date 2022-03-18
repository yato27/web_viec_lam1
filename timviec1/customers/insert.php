
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
    <title>create</title>
</head>
<body>
    <form action="insert_process.php" method="POST">
        name
        <input type="text" name="name"><br>
        gender
        <input type="number" name="gender"><br>
        date of birth
        <input type="date" name="birth"><br>
        phone 
        <input type="text" name="phone"><br>
        address
        <input type="text" name="address"><br>
        
        email
        <input type="text" name="email"><br>
        password
        <input type="text" name="password"><br>
       
        
        <button type="submit">thêm</button>

    </form>
</body>
</html>
<?php } ?>