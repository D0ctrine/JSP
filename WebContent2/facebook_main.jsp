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
        padding-left: 90px;
        padding-top: 10px;
    }
    .myimg{
        padding-left: 40px;
        position: absolute;
        top: 40px;
    }
    table{
        border-spacing: 0px 0px;
        background-color: rgb(248, 248, 248);
        margin-top: 100px;
    }
    .friends{
        position: absolute;
        float: right;
        width: 20px;
        color: white;
    }
    h1{
        position: absolute;
        top: 14px;
        left: 140px;
        font-size: 10px;
        background-color: white;
        padding-top: 3px;
        padding-left: 5px;
        padding-bottom: 7px;
        font-family: '맑은고딕';
        width: 370px;
    }
    h2{
        position: relative;
        bottom: 67px;
        left: 480px;
    }
    h3{
        position: absolute;
        top: 260px;
        left: 58px;
    }
    h5{
        position: absolute;
        top: 320px;
    }
    h6{
        color: white;
        font-size: 19px;
        position: relative;
        top:190px;
        left: 190px;
    }
    h7{
        position: relative;
        top:200px;   
        left: 40px;
    }
    h8{
    
        color: white;
    }
    .myimg li{
        width: 700;
        font-family:"맑은고딕";
        margin-left: 10px;
        display:inline-block;
     position: relative;
     bottom: 30px;
    }
    .myimg ul li a{ text-decoration: none; color:rgb(60,90,153)}
    .myimg ul li a:hover{ color:rgb(6, 6, 68) }
    .myimg ul li a:active{ color: red }

    .myinfo li{
        width: 700;
        font-family:"맑은고딕";
        margin-left: 10px;
        display:block;
     position: relative;
     bottom: 30px;
    }
    .myinfo ul li a{ text-decoration: none; color:rgb(184, 184, 184)}
    .myinfo ul li a:hover{ color:rgb(5, 5, 5) }
    .myinfo ul li a:active{ color: rgb(214, 213, 213) }

    .upmenu li{
     
        font-family:"맑은고딕";
        display:inline-block;
        position: absolute;
        top: 20px;
        right: 340px;
    }
    .upmenu ul li a{ text-decoration: none; color:rgb(184, 184, 184)}
    .upmenu ul li a:hover{ color:rgb(5, 5, 5) }
    .upmenu ul li a:active{ color: rgb(214, 213, 213) }
    </style>
</head>
<body>
    
        <div class="title">
               <a href="http://www.facebook.com"> <img src="./img/facebook.png"  width=25 >   </a>
                 
            </div>
                    <h1>
                        궁금한 친구나 장소를 검색해보세요.
                    </h1> 
                    <h2>
                            <img src="./img/돋보기.JPG"  width=20 >   
                    </h2>

                    <div class="myimg">
                            <h4>
                                    <img src="./img/background.jpg"  width=700 height=320 >
                            </h4>
                    
                                <ul> 
                                        <li><pre>                </pre></li>
                                        
                                        <li> <a href="./facebook_gesipan.jsp"> 타임라인</a></li>
                                        <li> <a href="#"> 정보 </a></li>
                                        <li> <a href="#"> 친구 <small>236</small> </a></li>
                                        <li> <a href="#"> 사진 </a></li>
                                        <li> <a href="#">더 보기 ▼</a></li>
                                </ul>        
                        
                          
                        
                          
                    </div>
                    <h3>
                        
                            <img src="./img/stephan.jpg"  width=130 height=140>
                            <h6>Stephan Curry</h6>
                    </h3>

                    <div class="myinfo">
                        <h7>
                            <p>      <table border="1" width=700 height =400>
                                            <tr height=25 >
                                                <td width=70 colspan="2">
                                                      <img src="./img/사람.jpg" > 
                                                            <sup><b> 정보</b></sup>
                                                </td>
                                    
                                             
                                            </tr>
                                            <tr height=200>
                                                <td width=300>
                                                    <ul>
                                                            <br>
                                                            <li> <a href="#"> 개요</a></li>
                                                            <br>
                                                            <li> <a href="#"> 경력 및 학력</a></li>
                                                            <br>
                                                            <li> <a href="#"> 거주했던 장소</a></li>
                                                            <br>
                                                            <li> <a href="#"> 연락처 및 기본 정보</a></li>
                                                            <br>
                                                            <li> <a href="#"> 가족 및 결혼/연얘 상태</a></li>
                                                            <br>
                                                            <li> <a href="#"> 자세한 내 소개</a></li>
                                                            <br>
                                                            <li> <a href="#"> 중요 이벤트</a></li>

                                                    </ul>
                                                </td>
                                                <td width=300></td>
                                            </tr>
                                    </table>
                                </p>
                            </h7>
                            </div>
                            <div class="upmenu">
                                <ul>
                                        <pre><li><a href="#"> <img src="./img/stephan.jpg"  width=18 height=20> <h8>Stephan Curry</h8></a>  |  <a href="#"> <h8>홈</h8></a></li></pre>
                                </ul>
                            </div>
                           
                
</body>
</html>