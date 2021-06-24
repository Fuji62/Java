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
			<input class="button" type="submit" value=" 登  録 ">
			<input class="button" type="reset" value="リセット">
			<input class="button" type="submit" value=" 表  示 ">
		</form>
	</main>
	</div>
</body>
</html>
//***************************************************************************
//seiseki1.css

@charset "UTF-8";
h2{
	color:dimgray;
	text-align: center;

}
div{
	background-color: lightgray;
	width: 255px;
	height: 300px;
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
.button{
	margin-left: 15px;
}

//***************************************************************************
//seiseki1.jsp

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/seiseki1_jsp.css">
<title>成績の一覧</title>
</head>
<body>
	<div>
		<header>
			<h2>成績の一覧</h2>
			<h4><a href="seiseki1.html">TOPへ</a></h4>
		</header>
		<main>
			<table border="1">
				<thead>
					<tr>
						<th id="number">学生番号</th>
						<th id="name">氏名</th>
						<th id="c">C言語</th>
						<th id="math">数学</th>
						<th id="java">Java言語</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="no">　</td>
						<td class="no">　</td>
						<td class="no">　</td>
						<td class="no">　</td>
						<td class="no">　</td>
					</tr>
					<tr>
						<td class="no">　</td>
						<td class="no">　</td>
						<td class="no">　</td>
						<td class="no">　</td>
						<td class="no">　</td>
					</tr>
					<tr>
						<td class="no">　</td>
						<td class="no">　</td>
						<td class="no">　</td>
						<td class="no">　</td>
						<td class="no">　</td>
					</tr>
				</tbody>
			</table>
		</main>
	</div>
</body>
</html>

//***************************************************************************
//seiseki1_jsp.css

@charset "UTF-8";
div{
	margin: 0 auto;
	text-align: center;
}
table {
	border-collapse: collapse;
    margin: 3px auto;
    table-layout: fixed;
    width: 500px;
}
th{
	background-color: lightgray;
	color:dimgray;
}


