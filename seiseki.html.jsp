//seiseki1.html

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/seiseki1.css">
<title>学生の成績データ</title>
</head>
<body>
	<div class="main">
	<header>
		<h2>学生の成績データ</h2>
	</header>
	<main>
		<form class="form" action="seiseki1.jsp" method="post">
			<dl>
				<dt><label class="label" for="number">学生番号</label></dt>
				<dd><input class="input" type="text" name="number" id="number"></dd>
				<dt><label class="label" for="name">氏名</label></dt>
				<dd><input class="input" type="text" name="name" id="name"></dd>
				<dt><label class="label" for="c">C言語 </label></dt>
				<dd><input class="input" type="text" name="c" id="c"></dd>
				<dt><label class="label" for="math">数学</label></dt>
				<dd><input class="input" type="text" name="math" id="math"></dd>
				<dt><label class="label" for="java">Java言語</label></dt>
				<dd><input class="input" type="text" name="java" id="java"></dd>
			</dl>
			<input class="register_button" type="submit" value=" 登  録 ">
			<input class="reset_button" type="reset" value="リセット">
			<input class="display_button" type="submit" value=" 表  示 ">
		</form>
	</main>
	</div>
</body>
</html>
//***************************************************************************
//seiseki1.css
@charset "UTF-8";

div{
	margin: 0 auto;
}
dt{
	width: 70px;
	padding: 10px ;
	float:left;
	clear: both;
}
dd{
	padding: 10px;
}


//***************************************************************************
