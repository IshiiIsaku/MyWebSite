<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<meta charset="UTF-8">
<title>購入確認</title>
</head>

<body style="
    background-image: url(&quot;http://kiliman.net/wp/wp-content/uploads/2015/03/Dollarphotoclub_72647985-e1427187916486.jpg&quot;);
">
<h1 class="mx-auto" style="width: 300px;"><font size="10"face="筆記体系"color="white">Kaffa Africa</font></h1>
<div class="mx-auto"style="float:right;width: 15%;">
<a style="color:red" href="Logout"><button type="submit" class="btn btn-danger">ログアウト</button></a>
</div>

<br><br>
<h4 class="mx-auto" style="width: 100px;"><font face="筆記体系"color="white">購入内容のご確認</font></h4>
                          <div class="mx-auto" style="width: 300px;">
							<table class="table table-bordered" style="width: 300px;">
								<thead class="thead-light">
									<tr class="table-light">
										<th class="mx-auto" style="width: 300px;"><font face="筆記体系">商品名</font></th>
										<th class="mx-auto" style="width: 300px;"><font face="筆記体系">単価</font></th>
										<th class="mx-auto" style="width: 300px;"><font face="筆記体系">小計</font></th>
									</tr>
								</thead>
								<tbody class="table-light">
									<c:forEach var="" items="" >
										<tr>
											<td class="mx-auto" style="width: 300px;"><font face="筆記体系"></font></td>
											<td class="mx-auto" style="width: 300px;"><font face="筆記体系">円</font></td>
											<td class="mx-auto" style="width: 300px;"><font face="筆記体系">円</font></td>
										</tr>
									</c:forEach>
									<tr>

										<td class="mx-auto" style="width: 300px;"><font face="筆記体系"></font></td>
										<td class="mx-auto" style="width: 300px;"><font face="筆記体系"></font></td>
										<td class="mx-auto" style="width: 300px;"><font face="筆記体系">円</font></td>
									</tr>
									<tr>
										<td class="mx-auto" style="width: 300px;"><font face="筆記体系"></font></td>
										<td class="mx-auto" style="width: 300px;"><font face="筆記体系"></font></td>
										<td class="mx-auto" style="width: 300px;"><font face="筆記体系">合計 円</font></td>
									</tr>
								</tbody>
							</table>
</div>
<div class="mx-auto" style="width: 100px;">
								<form action="BuyResult" method="post">
									<button class="btn btn-primary" style="width: 100px;" type="submit">購入する</button>
								</form>
</div>
<FORM>
						<INPUT type="button" value="戻る" onClick="history.go(-1)">
					</FORM>

</body>
</html>