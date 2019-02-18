<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>買い物かご</title>
</head>
<body style="
    background-image: url(&quot;http://kiliman.net/wp/wp-content/uploads/2015/03/Dollarphotoclub_72647985-e1427187916486.jpg&quot;);
">
<c:if test="${userInfo != null}">
	<li><font face="筆記体系"color="white">${userInfo.name}さん</font></li>
	</c:if>
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


	<h2 class="mx-auto" style="width: 200px;">
		<font face="筆記体系" color="white">買い物かご</font>
	</h2>

	<div class="mx-auto" style="width: 200px;">
		<form action="BuyConfirm" method="POST">

			<button class="btn btn-primary" style="width: 150px;" type="submit"
				name="action">レジに進む</button>
		</form>

		<br>
		<br>

		<form action="ItemDelete" method="POST">

			<button class="btn btn-primary" style="width: 150px;" type="submit">削除</button>
		</form>
	</div>

<br>
<div class="mx-auto" style="width: 600px;">
<div class="row">
		<div class="col s12">
			<div class="card grey lighten-5">

					<table class="bordered">
						<thead>
							<tr>

								<th style="width: 10%"></th>
								<th class="center">商品名</th>
								<th class="center">単価</th>
								<th class="center">グラム数</th>
								<th class="center">個数</th>
								<th class="center">合計金額</th>
							</tr>
						</thead>


							<tbody>
                              <c:forEach var="item" items="${cart}" varStatus="status">
								<tr>
								    <td class="center"><input type="checkbox" name="ItemDelete" value="${item.id}" /></td>
									<td class="center">${item.name}</td>
									<td class="center">${item.price}円</td>
									<td class="center">${item.g}g</td>
									<td class="center">${item.number}</td>
									<td class="center">${item.totalprice}円</td>

								</tr>

                              </c:forEach>
							</tbody>

					</table>
				</div>
			</div>
		</div>
</div>




	<FORM>
		<INPUT type="button" value="戻る" onClick="history.go(-1)">
	</FORM>

</body>
</html>