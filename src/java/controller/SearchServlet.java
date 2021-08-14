/*
 * Copyright(C) 2021, FPT University.
 * J3.L.P0004(Digital news) 
 *
 * Record of change:
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2021-05-21      1.0                 DuyNKHE140102    First Implement
 * 2021-05-28      2.0                 DuyNKHE140102    Second Implement
 */
package controller;

import dao.ArticleDAO;
import dao.impl.ArticleDAOImpl;
import entity.Article;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * This class handles the searching by title of the article, the paging process
 * and gets information from database through data access layer for displaying a
 * page with top recent news. This method will push to error page if any error
 * occurs.
 * <p>
 * Bugs:none
 *
 * @author Nguyen Khanh Duy
 */
@WebServlet(name = "SearchServlet", urlPatterns = {"/search"})
public class SearchServlet extends HttpServlet {

    /**
     * This method will search the article by title, process the pagination and
     * gets information from database for displaying a page with top recent
     * news. Then push it to the display page. This method will push to error
     * page if any error occurs. Processes requests for both HTTP
     * <code>GET</code> and <code>POST</code> methods.
     *
     * @param request stores parameter index and keyword from client's browser
     * and stores attributes listArticles, listSearchArticles, lastPage,
     * keyword, index then send to a web page. This is a
     * <code>javax.servlet.http.HttpServletRequest</code>
     * @param response is used to response the request of HTTP request. This is
     * a <code>javax.servlet.http.HttpServletResponse</code>
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            ArticleDAO articleDAO = new ArticleDAOImpl();

            int indexPage = Integer.parseInt(request.getParameter("index"));
            String keyword = request.getParameter("keyword").trim();

            int totalArticle = articleDAO.countArticleBySearch(keyword);
            int pageSize = 3;
            int lastPage = totalArticle / pageSize;
            //Maximum number of page that website can display
            if (totalArticle % pageSize != 0) {
                lastPage++;
            }
            //If found any articles
            if (lastPage != 0) {
                List<Article> listSearchArticles = articleDAO.searchArticle(keyword, indexPage, pageSize);
                request.setAttribute("listSearchArticles", listSearchArticles);
                request.setAttribute("lastPage", lastPage);
                request.setAttribute("keyword", keyword);
                request.setAttribute("index", indexPage);
            } else {
                request.setAttribute("error", "Your search - "
                        + keyword + " - did not match any articles.");
                request.getRequestDispatcher("Error.jsp").forward(request, response);
            }
            //Get the top 6 most recent articles
            List<Article> listArticles = articleDAO.getRecentArticles(6);
            request.setAttribute("listArticles", listArticles);
            request.getRequestDispatcher("SearchResult.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", "The page you’re looking for can’t be found.");
            request.setAttribute("errorDetail", e.getMessage());
            request.getRequestDispatcher("Error.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request stores parameter index and keyword from client's browser
     * and stores attributes listArticles, listSearchArticles, lastPage,
     * keyword, index then send to a web page. This is a
     * <code>javax.servlet.http.HttpServletRequest</code>
     * @param response is used to response the request of HTTP request. This is
     * a <code>javax.servlet.http.HttpServletResponse</code>
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request stores parameter index and keyword from client's browser
     * and stores attributes listArticles, listSearchArticles, lastPage,
     * keyword, index then send to a web page. This is a
     * <code>javax.servlet.http.HttpServletRequest</code>
     * @param response is used to response the request of HTTP request. This is
     * a <code>javax.servlet.http.HttpServletResponse</code>
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
