<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String [] month  = { "1月", "2月", "3月"};
 	String [] productClass = {"商品", "飲料"};
 	String sumTitle = ("合計"); 
 	
 	int [][] amount;
 	amount = new int[2][3];
 	amount[0][0] = 352000;
 	amount[0][1] = 442000;
 	amount[0][2] = 520000;
 	amount[1][0] = 278000;
 	amount[1][1] = 342600;
 	amount[1][2] = 380500;
 	
 	int[] sumProductAmount;
 	sumProductAmount = new int[2];
 	sumProductAmount[0] = amount[0][0] + amount[0][1] + amount[0][2];
 	sumProductAmount[1]	= amount[1][0] + amount[1][1] + amount[1][2];
 	
 	int[] sumMpnthAmount;
 	sumMpnthAmount = new int [3];
 	sumMpnthAmount[0] = amount[0][0] + amount[1][0];
 	sumMpnthAmount[1] = amount[0][1] + amount[1][1];
 	sumMpnthAmount[2] = amount[0][2] + amount[1][2];
 	
 	int total = sumProductAmount[0] + sumProductAmount[1];
  %>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
  border-collapse: collapse;
}

table th, table td {
  border: solid 1px black;
}
</style>
</head>
<body>
	<h1>Java基礎 - 演習問題2(発展)</h1>
 	<h2>売上一覧</h2>
 	<table>
 		<tr>
 			<th></th>
 			<th><% out.println(month[0]); %></th>
 			<th><% out.println(month[1]); %></th>
 			<th><% out.println(month[2]); %></th>
 			<th><% out.println(sumTitle); %></th>
 		</tr>
 		<tr>
 			<td><% out.println(productClass[0]); %></td>
 			<td><% out.println(amount[0][0]); %></td>
 			<td><% out.println(amount[0][1]); %></td>
 			<td><% out.println(amount[0][2]); %></td>
 			<td><% out.println(sumProductAmount[0]); %></td>
 		</tr>
 		<tr>
 			<td><% out.println(productClass[1]); %></td>
 			<td><% out.println(amount[1][0]); %></td>
 			<td><% out.println(amount[1][1]); %></td>
 			<td><% out.println(amount[1][2]); %></td>
 			<td><% out.println(sumProductAmount[1]); %></td>
 		</tr>
 		<tr>
 			<td><% out.println(sumTitle); %></td>
 			<td><% out.println(sumMpnthAmount[0]); %></td>
 			<td><% out.println(sumMpnthAmount[1]); %></td>
 			<td><% out.println(sumMpnthAmount[2]); %></td>
 			<td><% out.println(total); %></td>
 		</tr>
 		
 	</table>
	
</body>
</html>