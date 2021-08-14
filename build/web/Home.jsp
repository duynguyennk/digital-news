<%-- 
    Document   : Home
    Created on : May 12, 2021, 1:01:23 PM
    Author     : drako
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="wrap-all">
            <jsp:include page="Header.jsp"/>
            <!--Content-->
            <div class="content">
                <div class="left">
                    <c:forEach var="article" items="${listArticles}" begin="0" end="0" step="1">
                        <div class="tittle">${article.title}</div>
                        <div class="image">
                            <img src="images/${article.image}" class="img-title">
                        </div>
                        <div class="text">
                            ${article.content}
                        </div>

                        <div class="signature">
                            <div class="icon1"></div>
                            <div class="icon2"></div>
                            By ${article.author} | <fmt:formatDate pattern = "MMM dd yyyy hh:mm a" value = "${article.date}" />
                        </div>
                    </c:forEach>
                </div>
                <jsp:include page="RightPanel.jsp"/>
            </div>
            <!--Footer-->
            <div class="footer"></div>
        </div>
    </body>
</html>
