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
<title>新規登録画面</title>
</head>

<body style="
    background-image: url(&quot;http://kiliman.net/wp/wp-content/uploads/2015/03/Dollarphotoclub_72647985-e1427187916486.jpg&quot;);
">
	<div class="mx-auto" style="width: 300px;">
			<a href="Item">
				<font size="10" face="筆記体系" color="white">Kaffa Africa</font>
			</a>
		</div>

	<br>
	<br>

	<h2 class="mx-auto" style="width: 300px;">
		<font face="筆記体系" color="white">新規登録</font>
	</h2>

	<br>
	<form action="Shinki" method="POST">

		<div class="mx-auto" style="width: 300px;">
			<input value="" name="name" type="text" required placeholder="名前">
		</div>
		<br>

		<div class="mx-auto" style="width: 300px;">
			<input value="" name="address" type="text" required placeholder="住所">
		</div>
		<br>

		<div class="mx-auto" style="width: 300px;">
			<input value="" name="loginId" type="text" required
				placeholder="ログインID">
		</div>

		<br>
		<div class="mx-auto" style="width: 300px;">
			<input name="password" type="password" required placeholder="パスワード">
		</div>

		<br>
		<div class="mx-auto" style="width: 300px;">
			<input name="password1" type="password" required
				placeholder="パスワード（確認用）">
		</div>
		<br>
		<div class="mx-auto" style="width: 200px;">
			<button class="btn btn-primary" type="submit" name="action">登録</button>
		</div>
	</form>
	<br>
	<br>
	<br>
	<FORM>
		<INPUT type="button" value="戻る" onClick="history.go(-1)">
	</FORM>

</body>
</html>