<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<meta charset="UTF-8">
<title>買い物かご</title>
</head>
<body>
<body style="
    background-image: url(&quot;http://kiliman.net/wp/wp-content/uploads/2015/03/Dollarphotoclub_72647985-e1427187916486.jpg&quot;);
">
<li>${userInfo.name}さん</li>
<h1 class="mx-auto" style="width: 300px;"><font size="10"face="筆記体系"color="white">Kaffa Africa</font></h1>
<div class="mx-auto"style="float:right;width: 15%;">
<a style="color:red" href="Logout"><button type="submit" class="btn btn-danger">ログアウト</button></a>
</div>

	<br>


			<h2 class="mx-auto" style="width: 200px;"><font face="筆記体系" color="white">買い物かご</font></h2>

					<div class="mx-auto" style="width: 200px;">
			   			<form action="BuyConfirm" method="POST">

							<button class="btn btn-primary" style="width: 150px;" type="submit" name="action">
								レジに進む
							</button>
                       </form>

<br><br>

                        <form action="ItemDelete" method="POST">

									<button class="btn btn-primary"  style="width: 150px;" type="submit">削除</button>
						</form>
					</div>


					<c:forEach var="item" items="${cart}" varStatus="status">

						<div class="card">

								<a href="Item?item_id=${item.id}"></a>
						</div>


								<p>円</p>
								<p>
									<input type="checkbox" id="${status.index}" name="delete_item_id_list" value="${item.id}" /> <label for="${status.index}">削除</label>
								</p>

					</c:forEach>

					<FORM>
						<INPUT type="button" value="戻る" onClick="history.go(-1)">
					</FORM>

</body>
</html>