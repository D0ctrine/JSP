<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
     .title{
        width: 1024px; height:80px;
        background-color: rgb(60,90,153);
        color: white;
        
        padding-left: 150px;
        padding-top: 20px;
        padding-right: 90px;
        
    }
    .center{
        background-color: rgb(227, 227, 248);
        padding-top: 1px;
        
    }
    h1{
       
        position: relative;
        bottom: 50px;
        left: 600px;
        font-size: 10px;
        font-family:"맑은고딕";

    }
    h2{
         width: 1024px; height:580px;
        padding-top: 20px;
        padding-left: 67px;
        position: relative;
        bottom: 10px;
        left: 100px;
        font-size: 20px;
        color: rgb(60,90,153);
  
    }
    table{
        color: rgb(145, 145, 145)
    }
    h3{
        font-size: 45px;
        float: left;
        position: absolute;
        bottom: 480px;
        left: 850px;
        color: rgb(60,90,153);
        
    }
    h4{
        position: absolute;
        bottom: 100px;
        left: 755px;
    }
    h5{
        position: absolute;
        bottom: 350px;
        left: 755px;

    }
    button{
        margin-left: 10px;
        background-color: rgb(31, 65, 139);
       
        color: white;
    }
    button a{
     text-decoration:none;
     color:white;
    }
    span{
        color: black;
        font-size: 15px;
    }
    h6{
        position: relative;
        bottom: 70px;
        font-size: 10px;
    }
    h7{
        position: relative;
        bottom:70px;
    
    }
    h1 a{
        text-decoration: none;
        color: white;
       
    }

    /*<input type="text" size="20" name="iname"> <input type="text" size="20" name="iname">
                <input type="text" size="46" name="iphone">*/
    </style>
</head>
<body>
    <div class="title">
            <a href="http://www.facebook.com"> <img src="./img/facebook1.JPG"  width=185 >   </a>
            <h1>    <pre>이메일 또는 휴대폰                 비밀번호</pre>
                    <input type="text" size="20" name="iid"> <input type="text" size="20" name="ipw"><button><a href="./facebook_login_input.jsp">로그인</a> </button>
            </h1>
    </div>
    <div class="center" >
        <h2>
               <b>Facebook에서 전세계에 있는 친구, 가족, 지인들과<br>
                함께 이야기를 나눠보세요.</b><br>
                <img src="./img/facebookimo.png" >
        </h2>
        <h3>
       가입완료^^
        </h3>
            
    </div>
</body>
</html>
