<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="right">
    <div class="news">
        <div class="title-news">
            <p>Digital News</p>
        </div>
        <c:forEach var="article" items="${listArticles}" begin="0" end="0" step="1">
            <div class="content-news">
                <p>${article.shortContent}</p>
            </div>
        </c:forEach>
    </div>
    <div class="news">
        <div class="title-news">
            <p>Search</p>
        </div>
        <div class="search-news">
            <form action="search?index=1" method="post">
                <input class="search-box" type="text" name="keyword" size="15" value="${keyword}"  required>
                <input class="search-btn" type="submit" name="btnGo" value="Go">
            </form>  
        </div>
    </div>
    <div class="news">
        <div class="title-news">
            <p>Last Articles</p>
        </div>
        <c:forEach var="article" items="${listArticles}" begin="1" end="5" step="1">
            <div class="last-articles">
                <a href="article?id=${article.id}">${article.title}</a>
            </div>
        </c:forEach>
    </div>
</div>