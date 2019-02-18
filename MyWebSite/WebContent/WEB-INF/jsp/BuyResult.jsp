<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>購入結果</title>
</head>

<body
	style="background-image: url(&amp;quot;http://kiliman.net/wp/wp-content/uploads/2015/03/Dollarphotoclub_72647985-e1427187916486.jpg&amp;quot;);">
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








	<FORM>
		<INPUT type="button" value="戻る" onClick="history.go(-1)">
	</FORM>
</body>
</html>