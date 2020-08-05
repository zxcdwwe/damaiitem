<?php

include "conn.php";
//获取前端传入的did
if(isset($_GET['did'])){
    $did = $_GET['did'];
    //利用sid查找对应的数据，返回给前端。
    $result=$conn->query("select * from render where did = $did");
    echo json_encode($result->fetch_assoc());
}