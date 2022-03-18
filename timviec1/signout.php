<?php
session_start();
unset($_SESSION['id']);
unset($_SESSION['email']);
setcookie('remember',null, -1);
header("location:index.php");
