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
                    <h1>${error}</h1>
                    <h2>${errorDetail}</h2>
                </div>
                <jsp:include page="RightPanel.jsp"/>
            </div>
            <!--Footer-->
            <div class="footer"></div>
        </div>
    </body>
</html>
