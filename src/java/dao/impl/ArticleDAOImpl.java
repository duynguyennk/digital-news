/*
 * Copyright(C) 2021, FPT University.
 * J3.L.P0004(Digital news) 
 *
 * Record of change:
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2021-05-21      1.0                 DuyNKHE140102    First Implement
 * 2021-05-28      2.0                 DuyNKHE140102    Second Implement
 */
package dao.impl;

import context.DBContext;
import dao.ArticleDAO;
import entity.Article;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * This class is a implementation of the ArticleDAO interface and extends
 * DBContext class. This class provides methods to get the necessary data from
 * database and methods for searching articles. The method will throw an object
 * of <code>java.lang.Exception</code> class if there is any error when
 * searching or getting data.
 * <p>
 * Bugs:none
 *
 * @author Nguyen Khanh Duy
 */
public class ArticleDAOImpl extends DBContext implements ArticleDAO {

    /**
     * This method return the top most recent Articles from database with a
     * specific number of articles
     *
     * @param top number of articles will be return. This is an int number.
     * @return a list of top recent articles from database
     * @throws Exception if querying informations from database is error
     */
    @Override
    public List<Article> getRecentArticles(int top) throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Article> listArticle = new ArrayList<>();
        String sql = "select top (?) * from Article order by published_date desc";
        try {
            con = getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, top);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String title = rs.getString(2);
                String image = rs.getString(3);
                String shortContent = rs.getString(4);
                String content = rs.getString(5);
                String author = rs.getString(6);
                Date date = rs.getDate(7);
                Article article = new Article(id,
                        title,
                        image,
                        shortContent,
                        content, 
                        date,
                        author);
                listArticle.add(article);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConntection(con);
        }
        return listArticle;
    }

    /**
     * This method return an Article object from database with a specify id of
     * articles
     *
     * @param id the id of article will be return. This is an int number.
     * @return the specify article with the inputted id
     * @throws Exception if querying informations from database is error
     */
    @Override
    public Article getArticleById(int id) throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Article article = null;
        String sql = "select * from Article where id = ?";
        try {
            con = getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                String title = rs.getString(2);
                String image = rs.getString(3);
                String shortContent = rs.getString(4);
                String content = rs.getString(5);
                String author = rs.getString(6);
                Date date = rs.getDate(7);
                article = new Article(id,
                        title, 
                        image,
                        shortContent,
                        content, 
                        date,
                        author);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConntection(con);
        }
        return article;
    }

    /**
     * This method return a number of articles that is searched by keyword from
     * the database
     *
     * @param keyword the keyword to search articles. This is a
     * <code>java.lang.String</code>
     * @return a number of articles that was searched by keyword
     * @throws Exception if querying informations from database is error
     */
    @Override
    public int countArticleBySearch(String keyword) throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int totalArticle = 0;
        String sql = "select count(*) from Article where title like ?";
        try {
            con = getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, "%" + keyword + "%");
            rs = ps.executeQuery();
            if (rs.next()) {
                totalArticle = rs.getInt(1);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConntection(con);
        }
        return totalArticle;
    }

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
    @Override
    public List<Article> searchArticle(String keyword, int pageIndex, int pageSize) throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Article> listArticle = new ArrayList<>();
        String sql = "select * from Article where title like ?\n"
                + "order by id \n"
                + "offset ? rows fetch next ? rows only";
        try {
            con = getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, "%" + keyword + "%");
            ps.setInt(2, pageSize * (pageIndex - 1));
            ps.setInt(3, pageSize);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String title = rs.getString(2);
                String image = rs.getString(3);
                String shortContent = rs.getString(4);
                String content = rs.getString(5);
                String author = rs.getString(6);
                Date date = rs.getDate(7);
                Article article = new Article(id, 
                        title, 
                        image, 
                        shortContent,
                        content, 
                        date,
                        author);
                listArticle.add(article);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            closeResultSet(rs);
            closePreparedStatement(ps);
            closeConntection(con);
        }
        return listArticle;
    }
}
