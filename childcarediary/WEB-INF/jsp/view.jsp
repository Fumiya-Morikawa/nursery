<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>保育日誌</title>
</head>
<body>
    <h1>保育日誌</h1>

    <p>日付：<br>
        <c:out value="${ viewDiaryInfo.date }" />
    </p>
    <p>記入者：<br>
        <c:out value="${ viewDiaryInfo.name }" />
    </p>
    <p>ねらい：<br>
        <c:out value="${ viewDiaryInfo.aim }" />
    </p>
    <p>内容：<br>
        <c:out value="${ viewDiaryInfo.contents }" />
    </p>

    <form action="${ pageContext.request.contextPath }/DeleteServlet" method="post">
        <input type="hidden" name="id" value="${ viewDiaryInfo.id }" />
        <input type="submit" value="削除" />
    </form>

    <form action="${ pageContext.request.contextPath }/UpdateServlet1" method="post">
        <input type="hidden" name="id" value="${ viewDiaryInfo.id }" />
        <input type="hidden" name="date" value="${ viewDiaryInfo.date }" />
        <input type="hidden" name="name" value="${ viewDiaryInfo.name }" />
        <input type="hidden" name="aim" value="${ viewDiaryInfo.aim }" />
        <input type="hidden" name="contents" value="${ viewDiaryInfo.contents }" />
        <input type="submit" value="編集">
    </form>

    <br><br>
    <a href="./FindAllServlet">日誌一覧へ</a> &nbsp;&nbsp;
    <a href="${ pageContext.request.contextPath }/toppage.jsp">トップページへ  </a>

</body>
</html>