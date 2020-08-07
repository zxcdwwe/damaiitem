<?php

include "conn.php";
                                                                        
if(isset($_POST['del'])){
    $del = $_POST['del'];
    $result=$conn->query("select * from Duser where del = '$del'");
    if($result->fetch_assoc()){
        echo 1; //已注册
    }
    else if(!$del){
        echo 2; //空
    }
    else{
        echo 3; //成功新的
    }
}


//判断是否点击submit
if(isset($_POST['submit'])){
    echo $del;
    $del = $_POST['del'];
    $pass =sha1($_POST['password']);
    $repass = sha1($_POST['repass']);
    $conn->query("insert Duser values(null,'$del','$pass','$repass')");
    // php页面跳转
    // header('http://localhost/login&registry/src/login.html');
};

