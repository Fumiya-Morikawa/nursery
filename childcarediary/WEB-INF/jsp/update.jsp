<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>日誌の編集</title>
</head>
<body>
    <h1>日誌の編集</h1>
    <form action="${ pageContext.request.contextPath }/UpdateServlet2" method="post">
        <p>日付：<br>
            <input type="text" name="date" value="${ updateDiaryInfo1.date }" />
        </p>
        <p>記入者：<br>
            <input type="text" name="name" value="${ updateDiaryInfo1.name }" />
        </p>
        <p>ねらい：<br>
            <textarea name="aim">${ updateDiaryInfo1.aim }</textarea>
        </p>
        <p>内容：<br>
            <textarea name="contents">${ updateDiaryInfo1.contents }</textarea>
        </p>
        <input type="hidden" name="id" value="${ updateDiaryInfo1.id }">
        <p>
            <input type="submit" value="編集完了">
        </p>
    </form>
</body>
</html>