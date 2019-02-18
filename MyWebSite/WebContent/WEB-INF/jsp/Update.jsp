<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>ユーザー情報</title>

</head>
<body style="
    background-image: url(&quot;http://kiliman.net/wp/wp-content/uploads/2015/03/Dollarphotoclub_72647985-e1427187916486.jpg&quot;);
">

<li><font face="筆記体系"color="white">${userInfo.name}さん</font></li>

	<div class="mx-auto" style="width: 300px;">
			<a href="Item">
				<font size="10" face="筆記体系" color="white">Kaffa Africa</font>
			</a>
		</div>
	<div class="mx-auto" style="float: right; width: 15%;">
		<a style="color: red" href="Logout"><button type="submit"
				class="btn btn-danger">ログアウト</button></a>
	</div>
	<br>

	<h2 class="mx-auto" style="width: 300px;">
		<font face="筆記体系" color="white">ユーザー情報</font>
	</h2>
            <a style="color: red">
			    <c:if test="${errorMsg != null}">
					<div>${errMsg}</div>
				</c:if>
			</a>
			<a style="color: red">
					<div>${koushin}</div>
			</a>
	<form action="Update" method="POST">

		<br> <br>

		<div class="mx-auto" style="width: 300px;">
		<font face="筆記体系" color="white">${userInfo.loginId}</font>
			<input type="hidden" name="loginId" value="${userInfo.loginId}" required
				placeholder="ログインID">
		</div>
		<br>
		<div class="mx-auto" style="width: 300px;">
			<input type="text" name="name" value="${userInfo.name}" required placeholder="名前">
		</div>
		<br>

		<div class="mx-auto" style="width: 300px;">
			<input type="text" name="address" value="${userInfo.address}" required
				placeholder="住所">
		</div>
		<br>
		<div class="mx-auto" style="width: 300px;">
			<input type="password" name="password" value="" required
				placeholder="パスワード">
		</div>
		<br>

		<div class="mx-auto" style="width: 300px;">
			<input type="password" name="password1" value="" required
				placeholder="パスワード確認">
		</div>
		<br>
		<div class="mx-auto" style="width: 300px;">
			<button class="btn btn-primary" type="submit" name="action">更新</button>
		</div>

	</form>
	<br>
	<!--  購入履歴 -->
	<div class="row">
		<div class="col s12">
			<div class="card grey lighten-5">
				<div class="card-content">

					<table class="bordered">
						<thead>
							<tr>

								<th style="width: 10%"></th>
								<th class="center">購入日時</th>
								<th class="center">商品名</th>
								<th class="center">個数</th>
								<th class="center">配達料</th>
								<th class="center">購入金額</th>
								<th class="center">合計金額</th>
							</tr>
						</thead>

							<tbody>

								<tr>

									<td class="center"><fmt:formatDate
											value="${hyouji.buyDate}" pattern="yyyy年MM月dd日 HH時mm分" /></td>
									<td class="center"></td>
									<td class="center">個</td>
									<td class="center">200円</td>
									<td class="center">円</td>
									<td class="center">円</td>

								</tr>


							</tbody>

					</table>

				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<FORM>
		<INPUT type="button" value="戻る" onClick="history.go(-1)">
	</FORM>

</body>
</html>