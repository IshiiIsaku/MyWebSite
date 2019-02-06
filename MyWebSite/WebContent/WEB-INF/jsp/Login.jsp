<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<meta charset="UTF-8">
<title>ログイン画面</title>
</head>
<body style="
    background-image: url(&quot;http://kiliman.net/wp/wp-content/uploads/2015/03/Dollarphotoclub_72647985-e1427187916486.jpg&quot;);
">
<a style="color:red">
<c:if test="${errMsg != null}">
	    <div>
		  ${errMsg}
		</div>
	</c:if>
</a>
<h1 class="mx-auto" style="width: 300px;"><font size="10"face="筆記体系"color="white">Kaffa Africa</font></h1>
<br>
<br>
<br>
<br>
				<form action="Login" method="post">

                               <div class="mx-auto" style="width: 200px;">

									<input class="center-align" type="text" name="loginId" required placeholder="ログインID">
                                </div>
<br>
								<div class="mx-auto" style="width: 200px;">
									<input type="password" name="password" required placeholder="Password">
                               </div>
<br>
                               <div class="mx-auto" style="width: 200px;">
                               <button type="button"name="action" class="btn btn-primary">ログイン</button>
                               </div>
<br>

							   <div class="mx-auto" style="width: 200px;">
										<p class="right-align"><a href="Shinki"><font color="white">新規登録</font></a>
							   </div>
			    </form>
</body>
</html>
