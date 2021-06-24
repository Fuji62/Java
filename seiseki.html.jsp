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

<%@page import="java.io.BufferedWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*, java.util.*, java.nio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/seiseki1_jsp.css">
<title>成績の一覧</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String button = request.getParameter("button");
	String file_path = application.getRealPath("seiseki1.dat");
	if(button.equals("登録")){
		FileWriter file_w = new FileWriter(file_path, true);
		BufferedWriter buf_w = new BufferedWriter(file_w);
		StringBuffer str_buf = new StringBuffer();

		str_buf.append(request.getParameter("number")); str_buf.append("\t");
		str_buf.append(request.getParameter("name"));   str_buf.append("\t");
		str_buf.append(request.getParameter("c"));      str_buf.append("\t");
		str_buf.append(request.getParameter("math"));   str_buf.append("\t");
		str_buf.append(request.getParameter("java"));   str_buf.append("\t");

		buf_w.write(str_buf.toString()); //書き込み
		buf_w.newLine(); //復帰改行
		buf_w.close(); //ここを変えればデータベースにも書き込める
%>

<head><!-- 登録完了画面を表示するページ -->
<meta charset="UTF-8">
<title>登録完了</title>
</head>
<body>
	<h3>レコードを書き込みました。<a href="seiseki1.html">→入力画面へ戻る</a></h3>
</body>
</html>

<%
//*************************************************************************
// ●ここから
//*************************************************************************
	}else if(button.equals("表示")){
		try{
			FileReader file_r = new FileReader(file_path);//オープン
			BufferedReader buf_r = new BufferedReader(file_r);
			String line;
			while((line = buf_r.readLine()) != null){
				String[] split_line = line.split("\t");
				out.print("<tr>");
				for(int i = 0; i < split_line.length; i++){
					//レコードを出力 number,name,c,math,java
					out.print("<td>" + split_line[i] + "</td>");
				}
				out.print("</tr>");
			}
			buf_r.close();
		}catch(IOException e){
			e.printStackTrace();
		}
%>
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


