<%@ page import="util.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

  <!-- ※下記のコメントを参考に、必要に応じて処理を変更してください  -->
<%

    // 入力値を取得
    request.setCharacterEncoding("UTF-8");
	String product1 = request.getParameter("product1");
	String product2 = request.getParameter("product2");
	String amount1 = request.getParameter("amount1");
	String amount2 = request.getParameter("amount2");
	String btn = request.getParameter("btn");

    // 数値に変換
    int amount1 = 
    

    // ポイントを定義
    int point = 0;

    // メソッドを呼んでポイントを取得
    //point = ParamUtil.getPoint(amount);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題5(発展)</title>
<style>
.right {
  text-align: right;
}
</style>
</head>
<body>
  <h1>Java基礎 - 演習問題5(発展)</h1>

  <h2>計算結果</h2>

  <table border="1">
    <tr>
      <th>商品</th>
      <th>金額</th>
      <th>ポイント</th>
    </tr>
    <tr>
      <td><%=product1 %></td>
      <td class="right"><%=amount1 %></td>
      <td class="right"><%=point %></td>
    </tr>
    <tr>
      <td><%=product2 %></td>
      <td class="right"><%=amount2 %></td>
      <td class="right"><%=point %></td>
    </tr>
  </table>

  <a href="javaBasicDev5_input.jsp">戻る</a>
</body>
</html>