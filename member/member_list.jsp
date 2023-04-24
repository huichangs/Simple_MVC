<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 목록</title>
</head>
<body>
	<h3>회원수 : ${memList.size()}</h3>
	
	<ul>
		<c:forEach items = "${memList}" var = "vo">
			<li> <a href = "member_detail?mid=${vo.mid}">${vo.mid}(${vo.mname})</a></li>
		</c:forEach>
	</ul>

</body>
</html>