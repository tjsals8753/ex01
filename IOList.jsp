<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,model.*" %>
<%
	request.setCharacterEncoding("utf-8");
	
	DAO dao = new DAO();
	List<DTO> list = dao.IOList();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{margin: 0; padding: 0:}
	ul,li{list-style: none;}
	a{text-decoration: none;}
	.logo{text-align: center; background-color: #ff6f66; padding: 16px;}
	.navi{overflow: hidden; background-color: #66f6ff; padding: 12px 0;}
	.navi ul,li{float: left; text-align: center; padding: 0 20px;}
	.content{background-color: #e6e6e6; height: 500px;}
	.title{text-align: center; padding: 22px;}
	.content table{width: 700px; margin: 0 auto;}
	.content table th,td{border: 1px solid #bbb; text-align: center;}
	.content .btu0group{text-align: center;}
	.footer{text-align: center; background-color: green; padding: 15px 0;}
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<div class="header">
		<header>
			<h1 class="logo">(과정평가형 정보처리산업기사)예방접종 프로그램 ver 2.0</h1>
			<nav class="navi">
				<ul>
					<li><a href="CSelect.jsp">고객조회</a></li>
					<li><a href="OInsert.jsp">예방접종등록</a></li>
					<li><a href="IOList.jsp">접종이력조회</a></li>
					<li><a href="OList.jsp">백신접종건수</a></li>
					<li><a href="index.jsp">홈으로</a></li>
				</ul>
			</nav>
		</header>
	</div>
	<div class="section">
		<section>
			<div class="content">
			
			<h2 class="title">접종이력조회</h2>
				<form name="frm" method="post" action="OInsert_pro.jsp">
				<table>
					<tr>
						<th>예방접종이력번호</th>
						<th>고객번호</th>
						<th>고객명</th>
						<th>백신코드</th>
						<th>백신주사명</th>
						<th>접종일자</th>
					</tr>
				<%
					for(DTO dto : list){
				%>
					<tr>
						<td><%= dto.getP_seno().substring(0, 4) %>-<%= dto.getP_seno().substring(4, 8) %></td>
						<td><%= dto.getP_no() %></td>
						<td><%= dto.getP_name() %></td>
						<td><%= dto.getI_code() %></td>
						<td><%= dto.getI_name() %></td>
						<td><%= dto.getP_date().substring(0, 10) %></td>
					</tr>					
	
				<%
					}
				%>					
				</table>
				</form>

			</div>
		</section>
	</div>
	<div class="footer">
		<p>HRDKOREA Copyright@2016 All rights reserve. Human Resources Development Serivce of Korea<p>
	</div>
</body>
</html>