/*
 * Copyright(C) 2021, FPT University.
 * J3.L.P0004(Digital news) 
 *
 * Record of change:
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2021-05-21      1.0                 DuyNKHE140102    First Implement
 * 2021-05-28      2.0                 DuyNKHE140102    Second Implement
 */
package dao;

import entity.Article;
import java.util.List;

/**
 * This interface provides methods to get the necessary data from database and
 * methods for searching articles. <code>java.lang.Exception</code> throws when
 * error occurs
 * <p>
 * Bugs: none
 *
 * @author Nguyen Khanh Duy
 */
public interface ArticleDAO {

    /**
     * This method return the top most recent Articles from database with a
     * specific number of articles
     *
     * @param top number of articles will be return. This is an int number.
     * @return a list of top recent articles from database
     * @throws Exception if querying informations from database is error
     */
    public List<Article> getRecentArticles(int top) throws Exception;

    /**
     * This method return an Article object from database with a specify id of
     * articles
     *
     * @param id the id of article will be return. This is an int number.
     * @return the specify article with the inputted id
     * @throws Exception if querying informations from database is error
     */
    public Article getArticleById(int id) throws Exception;

    /**
     * This method return a number of articles that is searched by keyword from
     * the database
     *
     * @param keyword the keyword to search articles. This is a
     * <code>java.lang.String</code>
     * @return a number of articles that was searched by keyword
     * @throws Exception if querying informations from database is error
     */
    public int countArticleBySearch(String keyword) throws Exception;

    /**
     * This method return a list of articles that is searched by keyword from
     * the database
     *
     * @param keyword the keyword to search articles. This is a
     * <code>java.lang.String</code>
     * @param pageIndex the index of page that currently display. This is an int
     * number.
     * @param pageSize the total number of articles that will be display in a
     * page. This is an int number.
     * @return a number of articles that was searched by keyword
     * @throws Exception if querying informations from database is error
     */
    public List<Article> searchArticle(String keyword, int pageIndex, int pageSize) throws Exception;
}
