<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // ※必要な処理を実装してください

    // 入力値取得
    request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String rname = ("ロボット");
	String bloodType = request.getParameter("bloodType");
	String _age = request.getParameter("age");
	int age = Integer.parseInt(_age);
	
    // ロボットからの返信用メッセージ作成
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3</title>
</head>
<body>
  <h1>Java基礎 - 演習問題3</h1>

  <h2>ロボットからの返信</h2>
  <div>
    <!-- 必要に応じて処理を変更してください  -->
	<p>
    <%
    	if (name.isEmpty()){
    		out.println("名無し");
    	}else if (name.equals(rname)){
    		out.println("こんにちは" + name + "さん！私と一緒ですね");
    	}else{
    		out.println("こんにちは" + name + "さん！");
    	}
    %>
    </p>
    <p>
    <%
	    if (age > 20){
			out.println("私よりも" + (age - 20) + "年上ですね。");
		}else if (age < 20){
			out.println("私よりも" + (20 - age) + "年下ですね。");
		}else if(age == 20){
			out.println("私と同い年なんですね！");
		}
    %>
    </p>
    <p>
    <%
	   	switch(bloodType){
	   	case "typeA":
	   		out.println("私もA型です！");
	   		break;
	   	case "typeB":
	   		out.println("B型の人と話すのは初めてです。");
	   		break;
	   	case "typeAB":
	   		out.println("私の母がAB型です。");
	   		break;
	   	case "typeO":
	   		out.println("私の父がO型です");
	   		break;
	   	}
    %>
    </p>
  </div>
  <a href="javaBasic3_input.jsp">戻る</a>
</body>
</html>