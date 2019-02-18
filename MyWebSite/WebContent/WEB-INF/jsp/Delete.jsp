<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>退会画面</title>
</head>
<body>
<body style="
    background-image: url(&quot;http://kiliman.net/wp/wp-content/uploads/2015/03/Dollarphotoclub_72647985-e1427187916486.jpg&quot;);
">
<c:if test="${userInfo != null}">
<li><font face="筆記体系"color="white">${userInfo.name}さん</font></li>
</c:if><a href="Item">
	<h1 class="mx-auto" style="width: 300px;">
		<font size="10" face="筆記体系" color="white">Kaffa Africa</font>
	</h1>
</a>

	<div class="mx-auto" style="float: right; width: 15%;">
		<a style="color: red" href="Logout"><button type="submit"
				class="btn btn-danger">ログアウト</button></a>
	</div>

	<br>
	<br>
	<br>
	<br>

	<div class="mx-auto" style="width: 500px;">
		<h4>
			<font face="筆記体系" color="red">注意事項</font>
		</h4>
		<h5>
			<font face="筆記体系" color="white">退会すると ${userInfo.name}さん の全ての登録データが削除されます。</font>
		</h5>
	</div>


	<div class="mx-auto" style="width: 200px;">

		<form action="Delete" method="POST">
       <div class="mx-auto" style="width: 300px;">
			<input type="hidden" name="loginId" value="${userInfo.loginId}">
		</div>
			<button class="btn btn-primary" style="width: 150px;" type="submit"
				name="delete">退会する</button>
		</form>

		<br>
		<br>

		<form action="Item" method="get">
			<button class="btn btn-primary" style="width: 150px;name="notdelete">退会しない</button>

		</form>
	</div>





</body>
</html>