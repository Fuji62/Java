//seiseki1.html

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/seiseki1.css">
<title>学生の成績データ</title>
</head>
<body>

<h2>学生の成績データ</h2>
<form action="seiseki1.jsp" method="post">
	<ul>
		<li>
			<label class="label" for="number">学生番号</label>
			<input class="input" type="text" name="number" id="number">
		</li>
		<li>
			<label class="label" for="name">氏名　　</label>
			<input class="input" type="text" name="name" id="name">
		</li>
		<li>
			<label class="label" for="c">C言語　 </label>
			<input class="input" type="text" name="c" id="c">
		</li>
		<li>
			<label class="label" for="math">数学　　</label>
			<input class="input" type="text" name="math" id="math">
		</li>
		<li>
			<label class="label" for="java">Java言語</label>
			<input class="input" type="text" name="java" id="java">
		<li><br>
	</ul>
	<input class="register_button" type="submit" value=" 登  録 ">
	<input class="reset_button" type="reset" value="リセット">
	<input class="display_button" type="submit" value=" 表  示 ">
</form>


</body>
</html>

//***************************************************************************
