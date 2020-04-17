<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%	String path = request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/index_work.css" />
<link href="<%=request.getContextPath()%>/css/index_work.css"
	rel="stylesheet">
<!-- 引入样式 -->
<link href="/resource/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>

<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
</head>
<body>
	<h1>职位详情</h1>
	<table class="table">
		<tr>
			<th>id</th>
			<th>职业名</th>
			<th>公司名</th>
			<th>发布时间</th>
			<th>薪资</th>
			<th>岗位要求</th>
			<th>学历要求</th>
			<th>福利待遇</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${list}" var="p">
			<tr>
				<td>${p.pid}</td>
				<td>${p.pname}</td>
				<td>${p.company.cname }</td>
				<td>${p.pdate }</td>
				<td>${p.salary }</td>
				<td>${p.prequirement }</td>
				<td>${p.peducation }</td>
				<td>${p.pwelfare }</td>
				<td><a href="list">返回</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>