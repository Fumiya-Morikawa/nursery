<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>日誌の閲覧</title>
</head>
<body>

    <h1>日誌一覧</h1><br>
    <c:forEach var="diaryInfo" items="${ diaryInfoList }">
        <form name="diary_form" action="./ViewServlet" method="post">
            <input type="hidden" name="id" value="${ diaryInfo.id }" />
            <input type="hidden" name="date" value="${ diaryInfo.date }" />
            <input type="hidden" name="name" value="${ diaryInfo.name }" />
            <input type="hidden" name="aim" value="${ diaryInfo.aim }" />
            <input type="hidden" name="contents" value="${ diaryInfo.contents }" />
            
            <c:out value="${ diaryInfo.date }"></c:out>&nbsp;&nbsp;&nbsp;&nbsp;
            <c:out value="${ diaryInfo.aim }"></c:out>

            <input type="submit" value="閲覧" />
        </form>
    </c:forEach>

    <br><br>
    <a href="${ pageContext.request.contextPath }/toppage.jsp">トップページへ</a>
    
</body>
</html>