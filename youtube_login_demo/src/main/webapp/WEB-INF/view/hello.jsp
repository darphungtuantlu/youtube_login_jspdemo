<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value = "${pageContext.request.contextPath }]"/>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel = "stylesheet" href="/css/style.css">
<title>Document</title>
</head>
<body>
	<h1>Hello Hello</h1>
	<h1>${name_map_view}</h1>
	<br>

	<h2>hien thi thong tin student</h2>
	<strong><c:out value="${student_map.id}"></c:out></strong>
	<br>
	<strong><c:out value="${student_map.name}"></c:out></strong>
	<br>
	<strong><c:out value="${student_map.fullName}"></c:out></strong>
	<br>
	<strong><c:out value="${student_map.age}"></c:out></strong>
	<br>


	<table style="width: 100%">
		<tr>
			<th>stt</th>
			<th>id</th>
			<th>name</th>
			<th>fullName</th>
			<th>age</th>
		</tr>
		<c:forEach items="${list_student}" var="studentDinhDanh" varStatus="s">
			<tr>
				<td>${s.index+1}</td>
				<td>${studentDinhDanh.id}</td>
				<td>${studentDinhDanh.name}</td>
				<td>${studentDinhDanh.fullName}</td>
				<td>${studentDinhDanh.age}</td>

			</tr>
			<c:if test="${studentDinhDanh.name == 'Dat2' }">
				<h1>check condition name is Dat2</h1>
			</c:if>
		</c:forEach>
	</table>

	<c:choose>
		<c:when test="${student_map.id == 10}">
			<h1>this id = 1</h1>
			<br />
		</c:when>
		<c:otherwise>
			<h2>no equal</h2>
			<br />
		</c:otherwise>
	</c:choose>
</body>
</html>