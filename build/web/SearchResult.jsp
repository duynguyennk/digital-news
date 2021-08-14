<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <c:forEach var="entry" items="${listSearchArticles}">
                        <a href="article?id=${entry.id}" class="tittle">${entry.title}</a>
                        <div class="image">
                            <img src="images/${entry.image}" class="img-title">
                        </div>
                        <div class="text">
                            ${entry.shortContent}
                        </div>
                    </c:forEach>
                    <div class="paging">
                        <c:if test="${lastPage > 1}">
                            <c:forEach begin="1" end="${lastPage}" var="i">
                                <a class="${index==i?"active":""}" href="search?keyword=${keyword}&index=${i}">${i}</a>
                            </c:forEach>
                        </c:if>
                    </div>
                </div>
                <jsp:include page="RightPanel.jsp"/>
            </div>
            <!--Footer-->
            <div class="footer"></div>
        </div>
    </body>
</html>
