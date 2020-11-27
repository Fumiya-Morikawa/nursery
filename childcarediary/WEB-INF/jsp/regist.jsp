<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>日誌の新規登録</title>
</head>
<body>
    <h1>日誌の新規作成</h1><br>
    ${ message }
    <form action="${ pageContext.request.contextPath }/RegistServlet" method="post">
        <p>日付：<br>
            <input type="text" name="date" />
        </p>
        <p>記入者：<br>
            <input type="text" name="name" />
        </p>
        <p>ねらい：<br>
            <textarea name="aim"></textarea>
        </p>
        <p>内容：<br>
            <textarea name="contents"></textarea>
        </p>
        <p>
            <input type="submit" value="新規投稿">
        </p>
    </form>

    <br><br>
    <a href="${ pageContext.request.contextPath }/toppage.jsp">トップページへ</a>
    
</body>
</html>