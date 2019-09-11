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
.title {
	width: 1024px;
	height: 80px;
	background-color: rgb(60, 90, 153);
	color: white;
	padding-left: 150px;
	padding-top: 20px;
	padding-right: 90px;
}

.center {
	background-color: rgb(227, 227, 248);
	padding-top: 1px;
}

h1 {
	position: relative;
	bottom: 50px;
	left: 600px;
	font-size: 10px;
	font-family: "맑은고딕";
}

h2 {
	width: 1024px;
	height: 580px;
	padding-top: 20px;
	padding-left: 67px;
	position: relative;
	bottom: 10px;
	left: 100px;
	font-size: 20px;
	color: rgb(60, 90, 153);
}

table {
	color: rgb(145, 145, 145)
}

h3 {
	font-size: 37px;
	float: left;
	position: absolute;
	bottom: 680px;
	left: 750px;
}

h4 {
	position: absolute;
	bottom: 100px;
	left: 755px;
}

h5 {
	position: absolute;
	bottom: 350px;
	left: 755px;
}

button {
	margin-left: 10px;
	background-color: rgb(31, 65, 139);
	color: white;
}

button a {
	text-decoration: none;
	color: white;
}

span {
	color: black;
	font-size: 15px;
}

h6 {
	position: relative;
	bottom: 70px;
	font-size: 10px;
}

h7 {
	position: relative;
	bottom: 70px;
}

h1 a {
	text-decoration: none;
	color: white;
}

/*<input type="text" size="20" name="iname"> <input type="text" size="20" name="iname">
                <input type="text" size="46" name="iphone">*/
</style>
</head>
<body>
	<div class="title">
		<a href="./facebook_login.jsp"> <img src="./img/facebook1.JPG"
			width=185>
		</a>
		<h1>
			<pre>이메일 또는 휴대폰                 비밀번호</pre>
			<form action="./facebook_login_input.jsp" method="post">
				<input type="text" size="20" name="id"> <input type="text"
					size="20" name="pwd">
				<button type="submit">로그인</button>
			</form>
		</h1>
	</div>
	<div class="center">
		<h2>
			<b>Facebook에서 전세계에 있는 친구, 가족, 지인들과<br> 함께 이야기를 나눠보세요.
			</b><br> <img src="./img/facebookimo.png">
		</h2>
		<h3>
			<b>가입하기</b>
		</h3>
		<h4>
			<pre> 빠르고 쉽습니다.</pre>
			<form action="./facebook_signin_input.jsp" method="post">
				<table border="0" width=200 height=100>

					<tr height=50>
						<td width=70><input type="text" placeholder="성" size="20"
							maxlength="2" name="name"></td>
						<td width=70><input type="text" placeholder="이름(성 제외)"
							size="20" maxlength="8" name="name"></td>

					</tr>
					<tr height=50>
						<td width=70 colspan="2"><input type="text"
							placeholder="아이디 또는 이메일" size="46" maxlength="8" name="id"
							rows="50"></td>
					</tr>
					<tr height=50>
						<td width=70 colspan="2"><input type="text"
							placeholder="새 비밀번호" size="46" name="password"></td>
					</tr>
					<tr height=50>
						<td width=70 colspan="2">생일</td>
					</tr>
					<tr height=50>
						<td class="formEle"><select name="birthday">
								<option selected>연도</option>
								<option>1996</option>
								<option>1997</option>
								<option>1998</option>
								<option>1999</option>
								<option>2000</option>
						</select> <select name="birthday">
								<option selected>월</option>
								<option>1월</option>
								<option>2월</option>
								<option>3월</option>
								<option>4월</option>
								<option>5월</option>
								<option>6월</option>
								<option>7월</option>
								<option>8월</option>
								<option>9월</option>
								<option>10월</option>
								<option>11월</option>
								<option>12월</option>
						</select> <select name="birthday">
								<option selected>일</option>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
								<option>11</option>
								<option>12</option>
								<option>13</option>
								<option>14</option>
								<option>15</option>
								<option>16</option>
								<option>17</option>
								<option>18</option>
								<option>19</option>
								<option>20</option>
								<option>21</option>
								<option>22</option>
								<option>23</option>
								<option>24</option>
								<option>25</option>
								<option>26</option>
								<option>27</option>
								<option>28</option>
								<option>29</option>
								<option>30</option>
								<option>31</option>
						</select></td>
						<td class="formEle"></td>
						<td class="formEle"></td>
					</tr>
					<tr height=50>
						<td width=70 colspan="2">성별</td>

					</tr>
					<tr height=50>
						<td class="formEle"><input type="radio" value="M"
							name="gender" checked><span>남</span> <input type="radio"
							value="W" name="gender"><span>여</span></td>
					</tr>
					<tr height=50>

					</tr>
					<tr height=50>
						<td class="formEle">
							<h6>가입하기 버튼을 클릭하면 Facebook의 약관, 데이터 정책 및 쿠키 정책에 동의하게 됩니다.
								Facebook으로부터 SMS 알림을 받을 수 있으며 알림은 언제든지 옵트 아웃할 수 있습니다.</h6>
						</td>
					</tr>

				</table>
				<h7>
				<button type="submit">가입하기</button>
				</h7>
			</form>
		</h4>

	</div>
</body>
</html>
