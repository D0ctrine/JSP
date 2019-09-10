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
         body{
            background-color: rgb(241, 238, 238)
        }
     .title{
        width: 1024px; height:40px;
        background-color: rgb(60,90,153);
        color: white;
        
        padding-left: 100px;
        padding-top: 10px;
    }
    
    table{
        background-color: white;
        border-spacing: 0px 0px;
    }
    h1{
position: relative;
left: 900px;
bottom: 10px;
    }
    h1 a{
        text-decoration: none;
    }
    h2{
    
    color: rgb(60,90,153);
}
   button{
       margin-right: 200px;
   }
	button a{
	text-decoration: none;
	color:white;
	}

    </style>
</head>
<body>
        <div class="title">
                <a href="http://www.facebook.com"> <img src="./img/facebook.png"  width=25 >   </a>
             </div>
             <h2>
                            <img src="./img/stephan.jpg"  width=158 height=150> <h2>Stephan Curry</h2> <h1><a href="./facebook_main.jsp"> 홈</a></h1>
                </h2>
                <table border="1" width=800 height = 500>
                        <tr height=20>
                                <td  align="center"><b>게시글 공유하기</b>
                                <img src="./img/돋보기.JPG"></td>
                            </tr>
                            <tr height=20>
                                    <td  align="center"><b> 공개범위  </b>
                                    <select name="iyear">
                                            <option selected>모두에게</option>
                                            <option>친구만</option>
                                            <option>친한친구만</option>
                                            <option>특정인</option>
                                            <option>그룹</option>
                                            <option>비공개</option>
                                    </select>
                                </td> 
                                </tr>
                                <tr height=50>
                                        <td align="center">제목 <input type="text" size="20"maxlength="15" name="title" >  작성자 <input type="text" size="20"maxlength="10" name="id" ></td>
                                    </tr>
                            <tr height=100>
                                    <td><textarea name="ibody" cols="150" rows="29" maxlength="50char"></textarea></td>
                                </tr>
                                <tr height=5>
                                		<td align="left"><a href ='javascript:history.go(-1)'>이전</a></td>
                                       <td align="right"> <button><a href="./facebook_gesi_input.jsp">게시하기</a></button></td>
                                    </tr>
                    </table>
             

</body>
</html>