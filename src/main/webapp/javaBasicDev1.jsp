<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Java基礎 - 演習問題1(発展)</h1>

  <p>
    <span>ケーキの金額：\500</span>
    <br>
    <span>コーヒーの金額：\350</span>
    <br>
    <span>所持金：\3200</span>
  </p>

  <%
      /*
        ・printlnの()の中を必要に応じて修正してください。
        ・新たにprintlnを追加しないでください。
      */
      out.println("ケーキを3つとコーヒーを2つ購入する金額は、\\" + ((500 * 3) + (350 * 2)) + "です");
      out.println("<br>");
      out.println("ケーキを2つとコーヒーを3つ買った場合、所持金が\\" + (3200 - 2050) + "残ります");
      out.println("<br>");
      out.println("所持金でケーキとコーヒーを\\" + (3200 / (1500 + 1050) * 3) + "セット購入できます");
      out.println("<br>");
      out.println("所持金でお茶を買えるだけ買った後は、\\" + ((3200 - 3000) * 5) + "増えた場合の金額は、\\" + (200 + 1000) +  "です");
  %>
</body>
</html>