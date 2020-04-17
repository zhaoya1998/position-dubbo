<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
%>
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
<script type="text/javascript" src="js/jquery.validate.js"></script>
</head>
<body>
	<div>
		<form action="list" method="post">
			职位名称:<input name="pname" value="${vo.pname}" type="text"> 公司名称:<input
				name="cname" value="${vo.cname}" type="text"> 薪资:<input
				name="start" value="${vo.start}" type="text" onclick="WdatePicker()">--
			<input name="end" value="${vo.end}" type="text" onclick="WdatePicker()">
			<input type="submit" value="查询">

			 <input type="button" value="增加" onclick="toAdd()">

		</form>
		<table class="table">
			<tr>
				<th>职业名</th>
				<th>公司名</th>
				<th>工作地点</th>
				<th>薪资</th>
				<th>发布时间</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${info.list}" var="p">
				<tr>
					<td>${p.pname}</td>
					<td>${p.company.cname }</td>
					<td>${p.company.caddress }</td>
					<td>${p.salary }</td>
					<td>${p.pdate }</td>
					<td>
					   <input type="button" onclick="look(${p.pid})" value="企业详情">
					   <input type="button" onclick="clook(${p.company.cid})" value="公司详情">
					</td>
				</tr>
			</c:forEach>
			<tr align="center">
				<td colspan="10">当前是${info.pageNum}/${info.pages }页--共${info.total }条数据
					<a href="list?pageNum=1">首页</a> <a
					href="list?pageNum=${info.prePage }">上一页</a> <a
					href="list?pageNum=${info.nextPage }">下一页</a> <a
					href="list?pageNum=${info.pages }">尾页</a>
				</td>
			</tr>
		</table>
		<script type="text/javascript">
		function toAdd() {
			location.href="toAdd"
		}
		function look(pid) {
			location.href="look?pid="+pid
		}
		function clook(cid) {
			location.href="clook?cid="+cid
		}
		</script>
</body>
</html>