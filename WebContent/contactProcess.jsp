<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<sql:setDataSource var="ThirdWall" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/3rdWall" user="root" password="anand"/>
<sql:update var="ResultSet" dataSource="${ThirdWall}">insert into 3rdWall.3rdwallvisitors
(VName,VEmail,VSubject,VMessage) 
VALUES (?, ?, ?, ?)
            <sql:param value="${param.name}" />
            <sql:param value="${param.email}" />
            <sql:param value="${param.subject}" />
            <sql:param value="${param.message}" />
          

</sql:update>

</body>
</html>