<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%
    // ※必要な処理を実装してください

    // 入力値取得
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String str = null;
	String dis = null;
    // 表示するメッセージ用の変数
    dis =("数値を入力してください");
    if (num1 != null && num2 != null){
    	if(num1.isEmpty() && num2.isEmpty()){
    		dis = ("数値が両方とも未入力です");
    	}else if(num1.isEmpty() || num2.isEmpty()){
    		dis = ("数値を入力してください");
    	}else{
	    	int _num1 = Integer.parseInt(num1);
	    	int _num2 = Integer.parseInt(num2);

	    	
	    	String calculation = request.getParameter("operator");
	    	switch(calculation){
	    	case "add":
	    		dis = (num1 + "+" + num2 + "=" + (_num1 + _num2));
	    		break;
	    	case "sub":
	    		dis = (num1 + "-" + num2 + "=" + (_num1 - _num2));
	    		break;
	    	case "mul":
	    		dis = (num1 + "×" + num2 + "=" + (_num1 * _num2));
	    		break;
	    	case "div":
	    		dis = (num1 + "÷" + num2 + "=" + (_num1 / _num2));
	    		break;
	    	}
    	}
    }
    
    // メッセージ作成

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3(発展)</title>
<style>
.number {
    width: 80px;
}
</style>
</head>
<body>

  <h1>Java基礎 - 演習問題3(発展)</h1>
  <h2>四則演算</h2>

  <p>
    <!-- メッセージの表示  -->
    <%
    	out.println(dis);
    %>
  </p>

  <form action="javaBasicDev3.jsp" method="post">
    <input type="number" min="1" max="999999" class="number" name="num1">
    <select name="operator">
      <option value="add">＋</option>
      <option value="sub">ー</option>
      <option value="mul">×</option>
      <option value="div">÷</option>
    </select> <input type="number" min="1" max="999999" class="number"
      name="num2">
    <button type="submit">計算</button>
  </form>
</body>
</html>