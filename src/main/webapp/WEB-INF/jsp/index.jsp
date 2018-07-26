<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
</head>
<body>
	<input type="button" onclick="generator()" value="生成代码" style="margin:5px 360px;zoom:180%;"/>
	<table border="1" cellspacing="0" cellpadding="10" width="1500">
		<thead>
			<th><input type="button" onclick="selectAll()" value="全选" style="zoom:180%;"/></th>
			<th>表名</th>
			<th>Engine</th>
			<th>表备注</th>
			<th>创建时间</th>		
		</thead>
		<tbody id="myBody">
			<c:forEach items="${list}" var="item">
				<tr>
					<td><input type="checkbox" style="zoom:180%;"/></td>
					<td>${item.tableName}</td>		
					<td>${item.engine}</td>
					<td>${item.tableComment}</td>				
					<td>${item.createTime}</td>		
				</tr>
			</c:forEach> 
		</tbody>
	</table>
	<script src="${pageContext.request.contextPath}/static/js/jquery-2.2.4.min.js"></script>
	<script type="text/javascript">
		var tableNames = [];
		var flag = false;
		function generator() {
			tableNames = [];
			var checkeds = $("input:checked");
			if(checkeds.length == 0) {
				alert("请至少选择一个表!");
			} else {
				checkeds.each(function(index) {
					tableNames[index] = $(this).parent().parent().find("td:eq(1)").text();
				});
				location.href = "${pageContext.request.contextPath}/generator?tables=" + JSON.stringify(tableNames);
			}
		}
		function selectAll() {
			if(flag) {
				var checkboxes = $("input:checkbox");
				checkboxes.each(function(index) {
					$(this).removeAttr("checked");
				});
				flag = false;
			} else {
				var checkboxes = $("input:checkbox");
				checkboxes.each(function(index) {
					$(this).prop("checked","true");
				});
				flag = true;
			}
		}
	</script>
</body>
</html>













