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

    <?php
}
else {
    include '../header.php';
    $page = 1;
    $search ='';
    if(isset($_GET['search'])){
        $search=$_GET['search'];
    }
    $connect = mysqli_connect('localhost','root','','20');
    mysqli_set_charset($connect,'utf8');
    $sql="select count(*) from comments 
    where content like '%$search%'  ";
    
    $array_result= mysqli_query($connect,$sql);
    $record = mysqli_fetch_array($array_result)['count(*)']; 
    $record_per_page = 10;
    $page_number = ceil($record/$record_per_page);
    if(isset($_GET['page'])){
        $page = $_GET['page'];
    }
    
    $offset = ($page-1)*$record_per_page;
    


    
    $connect = mysqli_connect('localhost','root','','20');
    
    $sql="select * from comments 
    where content like '%$search%'
    limit $record_per_page offset $offset 
    ";
    mysqli_set_charset($connect,'utf8');
    
    $array_result= mysqli_query($connect,$sql);

    ?>
     <caption>
        <form action="" method="get">
            <input type="search" name="search" value="<?php echo $search ?>">
        </form>
    </caption>
    <table width='100%' border= '1px solid black'>
            <tr>
                <th>id</th>
                <th>id_cus</th>
                <th>id_empl</th>
                <th>content</th>
                <th>date</th>
                
               
                
                
                <th>delete</th>
            </tr>
            <?php foreach ($array_result as $each){ ?>
            <tr>
                <td><?php echo $each['id_cmt'] ?></td>
                <td><?php echo $each['id_cus'] ?></td>
                <td><?php echo $each['id_empl'] ?></td>
                <td><?php echo $each['content'] ?></td>
                <td><?php echo $each['date'] ?></td>
                
                
                
                <td><a href="delete_process.php?id=<?php echo $each['id_cmt'] ?>">
                 delete
                </a>
                </td>
            </tr>
            <?php } ?>
        </table>
        <?php   for ($x = 1;$x <= $page_number; $x++){ ?>
                <a href="?page=<?php echo $x ?>&search=<?php echo $search ?>"> <?php echo $x ?> </a>
             
            <?php } ?>
<?php include '../footer.php'; }?>