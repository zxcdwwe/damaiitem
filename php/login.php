<?php
include "conn.php";
if(isset($_POST['del']) && isset($_POST['del'])){
    $del = $_POST['del'];
    $pass = $_POST['pass'];
    $result = $conn->query("select * from Duser where del = '$del' and password ='$pass'");
    if($result->fetch_assoc()){
        echo true;
    }else{
        echo false;
    }
}