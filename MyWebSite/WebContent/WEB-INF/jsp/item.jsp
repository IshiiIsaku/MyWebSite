<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>商品</title>
</head>
<body style="
    background-image: url(&quot;http://kiliman.net/wp/wp-content/uploads/2015/03/Dollarphotoclub_72647985-e1427187916486.jpg&quot;);
">
	<c:if test="${userInfo != null}">
		<li><font face="筆記体系"color="white">${userInfo.name}さん</font></li>
	</c:if>

	<h1 class="mx-auto" style="width: 300px;"><font size="10"face="筆記体系"color="white">Kaffa Africa</font></h1>

	<c:if test="${userInfo != null}">
		<div class="mx-auto"style="float:right;width: 15%;">
			<a style="color:red"href ="Delete?id=${userInfo.loginId}"><button type="submit" class="btn btn-danger">退会</button></a>
		</div>
		<div class="mx-auto"style="float:right;width: 15%;">
			<a style="color:red" href="Logout"><button type="submit" class="btn btn-danger">ログアウト</button></a>
		</div>
		<div class="mx-auto"style="float:right;width: 15%;">
			<a style="color:red" href="Update"><button type="submit" class="btn btn-primary">ユーザー</button></a>
		</div>
		<div class="mx-auto"style="float:right;width: 15%;">
			<a style="color:red" href="Cart"><button type="submit" class="btn btn-primary">カート</button></a>
		</div>
	</c:if>

	<c:if test="${userInfo == null}">
		<div class="mx-auto"style="float:right;width: 15%;">
			<a style="color:red" href="Login"><button type="submit" class="btn btn-primary">ログイン</button></a>
		</div>
	</c:if>

	<c:if test="${userInfo != null}">
		<h4><font face="筆記体系" color="white">買い物をする</font></h4>

  		<form action="Cart" method="post">
		  <div class="form-row align-items-center">
		    <div class="col-auto my-1">
		      <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Preference</label>
		      <select class="custom-select mr-sm-2" id="inlineFormCustomSelect"name="ItemId">
		        <option selected>商品名</option>
		        <option value="1">エチオピア:GOTITIナチュラル ハイロースト</option>
		        <option value="2">タンザニア:キゴマ フルシティ</option>
		        <option value="3">ケニア:マサイ フレンチ</option>
		        <option value="4">ルワンダ:フギナチュラル シティ</option>
		        <option value="5">コンゴ:ブルボンスペシャル フルシティ</option>
		      </select>
		     </div>
		    </div>
		  <div class="form-row align-items-center">
		    <div class="col-auto my-1">
		      <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Preference</label>
		      <select class="custom-select mr-sm-2" id="inlineFormCustomSelect"name="g">
		        <option selected>グラム数</option>
		        <option value="1">100g</option>
		        <option value="2">200g</option>
		        <option value="3">300g</option>
		        <option value="4">400g</option>
		        <option value="5">500g</option>
		      </select>
		     </div>
		    </div>
		  <div class="row">
				<div class="input-field col s8 offset-s2">
					<input type="text" name="number" required placeholder="個数">
				</div>
		  </div>

		    <div class="col-auto my-1">
		      <button type="submit" class="btn btn-primary">かごに入れる</button>
		    </div>

  		</form>
	  </c:if>
	  <br>


	<div class="mx-auto"style="float:left;width: 33%;">

			<img style="width: 200px;" src="http://freesozai.jp/itemStartDownload.php?category=nation_flag&amp;page=ntf_205&amp;type=sozai&amp;file=2.png">
			<h3><font face="筆記体系" color="white">エチオピア</font></h3>

			<img style="width: 200px;" src="http://www.cafe-03.net/africa/beans_image/ethiopie_na2018g.jpg">
			<h4><font face="筆記体系" color="white">GOTITIナチュラル　ハイロースト　</font><font face="筆記体系" color="red">630円(100g)</font></h4>

			<h5><font face="筆記体系" color="white">南部諸民族州ゲデブ地区「GOTITI」標高2150ｍ
													<br>品種：イルガチェフェ在来種
													<br>完熟豆をハンドピック
													<br>精製：ナチュラル（アフリカンベッドで天日乾燥）
													<br><br><font face="筆記体系"color="yellow">焙煎と味わいの特徴</font>
													<br>「芳醇な赤ワインフレーバー＆果実＆複雑」
													<br>「香り高くフルーティ、濃厚でジューシー、
													<br>重層的で豊富な甘味とコク」ナチュラル精製ならではの
													<br>芳醇なワインフレーバーが特徴ではありますが、
													<br>ワインフレーバーはほどよいくらいで果実＆
													<br>その他のフレーバーがミックスされてGOODです。

	        </font></h5>
	 	</div>

		 <div class="mx-auto"style="float:left;width: 33%;">

			<img style="width: 200px;"src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Flag_of_Tanzania.svg/252px-Flag_of_Tanzania.svg.png">
			<h3><font face="筆記体系"color="white">タンザニア</font></h3>

			<img style="width: 200px;"src="http://www.cafe-03.net/africa/beans_image/tanzania2016_g.jpg">
			<h4><font face="筆記体系"color="white">キゴマ　フルシティ　</font><font face="筆記体系"color="red">490円(100g)</font></h4>

			<h5><font face="筆記体系"color="white">生産地区：西部タンザニア　キゴマ地区
													キゴマ州の小農家　
													<br>標高1500m　
													<br>選別工場：カンヨブドライミル指定
													<br>品種：N39、ブルボン　スクリーン18アップ　
													<br><br><font face="筆記体系"color="yellow">焙煎と味わいの特徴</font>
													<br>「やさしい苦みと豊富な甘味、コク」
													<br>中深煎りの「フルシティ＋」で「やさしい苦みと
													<br>甘み、コク」を最大限に引き出しました。
													<br>後味がよいのでたくさん飲まれる方でも飲み飽きない、
													<br>中深煎りコーヒーといえましょう。


	        </font></h5>
	 	</div>

	  <div class="mx-auto"style="float:left;width: 33%;">

			<img style="width: 200px;"src="https://upload.wikimedia.org/wikipedia/commons/4/49/Flag_of_Kenya.svg">
			<h3><font face="筆記体系"color="white">ケニア</font></h3>

			<img style="width: 200px;"src="http://www.cafe-03.net/africa/beans_image/masai2015_gs.jpg">
			<h4><font face="筆記体系"color="white">マサイ　フレンチ　</font><font face="筆記体系"color="red">600円(100g)</font></h4>

			<h5><font face="筆記体系"color="white">生産地区:キリニャガ(KIRINYAGA)中心
												<br>標高1600-2000ｍ
												<br>品種：主にSL28、SL34　
												<br><br><font face="筆記体系"color="yellow">焙煎と味わいの特徴</font>
												<br>「濃厚なコク、力強いフレーバー、
												<br>豊富な甘味」濃厚なコクを持ち、力強いフレーバー、
												<br>甘味もたっぷり、甘酸っぱさを感じる、
												<br>ほどよい酸味が心地よい。ケニアコーヒーの
												<br>力強さがしっかり感じられる「マサイ」です。
												<br>一杯のカップから深い満足感が得られることでしょう。
												<br><br><br><br><br><br>
	        </font></h5>
	 	</div>


	 <div class="mx-auto"style="float:left;width: 33%;">

			<img style="width: 200px;"src="https://kotobank.jp/image/dictionary/daijisen/media/102418.jpg">
			<h3><font face="筆記体系"color="white">ルワンダ</font></h3>

			<img style="width: 200px;"src="http://www.cafe-03.net/africa/beans_image/rwanda_hugi2017_g.jpg">
			<h4><font face="筆記体系"color="white">フギナチュラル　シティ　</font><font face="筆記体系"color="red">500円(100g)</font></h4>

			<h5><font face="筆記体系"color="white">南部州ニャルグル郡ンゴマ
												<br>アカニャルコーヒー生産者組合
												<br>標高1800－1900メートル、年間降水量1300-1400ミリ、
												<br>気温17-18度、生産能力1000トン、ドライテーブル32台
												<br>精製方法：ナチュラル　
												<br>品種：ブルボン種　スクリーン15UP　

												<br><br><font face="筆記体系"color="yellow">焙煎と味わいの特徴</font>
									            <br>「ほどよいワインフレーバー」「豊富な甘味、マイルドな飲み口」
									             <br>ナチュラル精製ならではの芳醇なワインフレーバーが特徴です。
									             <br>おさえめのワインフレーバーのなかにフローラル＆フルーツ、
									             <br>ティーフレーバーもあるような。口当たりよくマイルドうまみが広がります。
	        </font></h5>

	  </div>

		 <div class="mx-auto"style="float:left;width: 33%;">

			<img style="width: 200px;"src="https://upload.wikimedia.org/wikipedia/commons/6/6f/Flag_of_the_Democratic_Republic_of_the_Congo.svg">
			<h3><font face="筆記体系"color="white">コンゴ</font></h3>

			<img style="width: 200px;"src="http://www.cafe-03.net/africa/beans_image/kivu2013_g.jpg">
			<h4><font face="筆記体系"color="white">ブルボンスペシャル　フルシティ　</font><font face="筆記体系"color="red">500円(100g)</font></h4>

			<h5><font face="筆記体系"color="white">北キブ州イザレ地区カホンド
												<br>カホンド・ウォッシングステーション（イザレ地区に住む383名の零細農家 ）
												<br>標高1600－1800メートル、降水量1800－2000ミリ、気温14－26℃、有機栽培
												<br>精製方法：フルウォッシュド
												<br>品種：ブルボン種　スクリーン15UP
												<br><br><font face="筆記体系"color="yellow">焙煎と味わいの特徴</font>
												<br>「穏やかな苦みと豊富な甘味」「深いコクがじんわり広がる」
												<br>基本的には「ビターで濃厚な飲み口」のコーヒーといってよいでしょう。
												<br>ただし「マイルドな苦み」です。自然な甘味とともに「深いコク」がじんわり広がります。
												<br>酸味はほとんどありません。焙煎度は「フルシティロースト」です

	        </font></h5>
	 	</div>
	</body>
</html>