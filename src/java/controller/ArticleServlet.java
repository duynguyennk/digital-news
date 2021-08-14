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
 * This class gets the id of the article and display it with the information
 * from database through data access layer and display the next top 5 recent
 * news. This class will push to error page if any error occurs.
 * <p>
 * Bugs:none
 *
 * @author Nguyen Khanh Duy
 */
@WebServlet(name = "ArticleServlet", urlPatterns = {"/article"})
public class ArticleServlet extends HttpServlet {

    /**
     * This method gets the id of the article and display it with the
     * information from database and display the next top 5 recent news. This
     * method will push to error page if any error occurs or the id is not
     * found.
     *
     * @param request stores parameter id and keyword from client's browser and
     * stores attributes mainArticles, listArticles, error, errorDetail then
     * send to a web page. This is a
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
            //Get the top 6 most recent articles
            List<Article> listArticles = articleDAO.getRecentArticles(6);
            request.setAttribute("listArticles", listArticles);

            //Get id from url parameter.
            int id = Integer.parseInt(request.getParameter("id"));
            Article mainArticle = articleDAO.getArticleById(id);
            //If Article doesn't exist, forward it to error page and show that id not found 
            if (mainArticle == null) {
                request.setAttribute("error", "Sorry, ID not found.");
                request.getRequestDispatcher("Error.jsp").forward(request, response);
            }
            request.setAttribute("mainArticle", mainArticle);
            request.getRequestDispatcher("Detail.jsp").forward(request, response);
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
     * @param request stores parameter id and keyword from client's browser and
     * stores attributes mainArticles, listArticles, error, errorDetail then
     * send to a web page. This is a
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
     * @param request stores parameter id and keyword from client's browser and
     * stores attributes mainArticles, listArticles, error, errorDetail then
     * send to a web page. This is a
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
