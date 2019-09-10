<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
    .title{
            width:1024px; height:150px;
            margin-left : 40px;
            padding-left:20px;
    }
    .mainP{
            width:1024px; height:768px;
            background-color: rgba(0, 162, 255, 0.671);
            margin-left : 40px;
            padding-left:20px;
     }
     h1 {
         color : red; 
         font-family: "궁서체";
         padding-top:10px
    } 
     p {
         color : white; 
         font-family: "돋음";
         font-size: 15px;     
     }
     table{
         margin-top: 50px;
         text-align: center;
         width: 600px;;        
         background-color:rgb(247, 11, 11);
         border-spacing: 1px;
         padding: 0px;
     }
     tr{
         height: 40px;
         background-color:rgb(229, 226, 226);
     }
     th{
         height: 70px;
         background-color: beige;
         background: url("./img/title.jpg");
         color:hotpink;
         font-size : 20px;
     }
     span{   /* 내가 의도하는 하나의 문장을 의미*/
         font-size: 15px;
     }
     .formEle{
        padding-left: 10px;
        text-align: left;
     }
    </style>
</head>
<body>
    <div class="mainP">
        <h1>My Story</h1>
        <hr>
        <form action="01_research_input.jsp" method=post>
        <table border=0 align=center width='1024' class="txt" align=center >
            <th colspan="5"> 
                설  문  조  사     
            </th>
            <tr>     
                <td width=100><span>이름</span></td>  
                <td class="formEle" colspan=4>
                    <input type="text" size="20" name="iname" maxlength="8">
                </td>        
            </tr>            
            <tr> 
                <td ><span>나이</span></td>  
                <td colspan="2" width=300  class="formEle" >
                        <input type="text" size="2" name="iage" maxlength="2"><span>세</span>
                </td> 
                <td width=100><span>성별</span></td> 
                <td  class="formEle" >
                    <input type="radio" name="igender" checked value="남"><span>남</span>
                    <input type="radio" name="igender"  value="여"><span>여</span>
                </td>              
            </tr>
            <tr>   
                <td width=100><span>취미</span></td>  
                <td colspan=4 class="formEle">
                    <input type="checkbox" name="ihob" value=1><span>낚시</span>
                    <input type="checkbox" name="ihob" value=2><span>여행</span>
                    <input type="checkbox" name="ihob" value=3><span>방콕</span>
                    <input type="checkbox" name="ihob" value=4><span>쇼핑</span>
                </td>                 
            </tr>
            <tr> 
                <td width=100><span>지역</span></td>  

                <td colspan=4 class="formEle">
                    <select name="icity">
                        <option><span>서울</span></option>
                        <option><span>경기</span></option>
                        <option selected><span>충남</span></option>
                        <option><span>충북</span></option>
                    </select>

                </td>                   
            </tr>
            <tr>
                <td rowspan="2"><span>기타의견</span></td>  
                <td width=100><span>제목</span></td> 
                <td  class="formEle" colspan=3>
                        <input type="text" size="30" name="isubject">    
                </td>            
            </tr>
            <tr>    
                <td  width=100><span>내용</span></td> 
                <td colspan="3" class="formEle">
                    <textarea name="ibody" cols="50" rows="3"></textarea>

                </td>            
            </tr>
            <tr>   
                <td colspan=5>
                    <input type="reset" value="Clear">
                    <input type="submit" value="Save">
                </td>        
            </tr>
        
        </table>
    </form>
    </div>
</body>
</html>


