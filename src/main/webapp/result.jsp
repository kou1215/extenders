<!-- result.jsp -->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>結果画面</title></head>
<body>
  <h2>こんにちは、<%= request.getAttribute("username") %> さん！</h2>
  <a href="index.jsp">戻る</a>
</body>
</html>
