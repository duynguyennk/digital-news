/*
 * Copyright(C) 2021, FPT University.
 * J3.L.P0004(Digital news) 
 *
 * Record of change:
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2021-05-21      1.0                 DuyNKHE140102    First Implement
 * 2021-05-28      2.0                 DuyNKHE140102    Second Implement
 */
package entity;

import java.sql.Date;

/**
 * The Article class represents character of article. The class contains
 * constructor, getter, setter, toString of Article object
 * <p>
 * Bugs: none
 *
 * @author Nguyen Khanh Duy
 */
public class Article {

    private int id;
    private String title;
    private String image;
    private String shortContent;
    private String content;
    private Date date;
    private String author;

    /**
     * Initializes a newly created Article object from a parameterless
     * constructor
     */
    public Article() {
    }

    /**
     * Constructs an <code>Article</code> object with the given id, title, image,
     * shortContent, content, date and author
     *
     * @param id the id of the Article. This is an int number.
     * @param title the title of Article. This is a
     * <code>java.lang.String</code>
     * @param image the image of Article. This is a
     * <code>java.lang.String</code>
     * @param shortContent the short content of Article. This is a
     * <code>java.lang.String</code>
     * @param content the content of Article. This is a
     * <code>java.lang.String</code>
     * @param date the published date of Article. This is a
     * <code>java.sql.Date</code>
     * @param author the author of Article. This is a
     * <code>java.lang.String</code>
     */
    public Article(int id, String title, String image, String shortContent, String content, Date date, String author) {
        this.id = id;
        this.title = title;
        this.image = image;
        this.shortContent = shortContent;
        this.content = content;
        this.date = date;
        this.author = author;
    }

    /**
     * Gets id attribute of this <code>Article</code> object.
     *
     * @return the id of this Article object
     */
    public int getId() {
        return id;
    }

    /**
     * Sets the id of this <code>Article</code> object to the specified id.
     *
     * @param id the id for the <code>Article</code>. This is an int number.
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * Gets title attribute of this <code>Article</code> object.
     *
     * @return the title of this Article object
     */
    public String getTitle() {
        return title;
    }

    /**
     * Sets the title of this <code>Article</code> object to the specified
     * title.
     *
     * @param title the title for the <code>Article</code>. This is a
     * <code>java.lang.String</code>
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * Gets image attribute of this <code>Article</code> object.
     *
     * @return the link to the image of this Article object
     */
    public String getImage() {
        return image;
    }

    /**
     * Sets the image of this <code>Article</code> object to the specified
     * image.
     *
     * @param image the image for the <code>Article</code>. This is a
     * <code>java.lang.String</code>
     */
    public void setImage(String image) {
        this.image = image;
    }

    /**
     * Gets shortContent attribute of this <code>Article</code> object.
     *
     * @return the short content of this Article object
     */
    public String getShortContent() {
        return shortContent;
    }

    /**
     * Sets the short content of this <code>Article</code> object to the
     * specified short content.
     *
     * @param shortContent the short content for the <code>Article</code>. This
     * is a <code>java.lang.String</code>
     */
    public void setShortContent(String shortContent) {
        this.shortContent = shortContent;
    }

    /**
     * Gets content attribute of this <code>Article</code> object.
     *
     * @return the content of this Article object
     */
    public String getContent() {
        return content;
    }

    /**
     * Sets the content of this <code>Article</code> object to the specified
     * content.
     *
     * @param content the content for the <code>Article</code>. This is a
     * <code>java.lang.String</code>
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * Gets date attribute of this <code>Article</code> object.
     *
     * @return the date of this Article object
     */
    public Date getDate() {
        return date;
    }

    /**
     * Sets the date of this <code>Article</code> object to the specified date.
     *
     * @param date the date for the <code>Article</code>. This is a
     * <code>java.sql.Date</code>
     */
    public void setDate(Date date) {
        this.date = date;
    }

    /**
     * Gets author attribute of this <code>Article</code> object.
     *
     * @return the author of this Article object
     */
    public String getAuthor() {
        return author;
    }

    /**
     * Sets the author of this <code>Article</code> object to the specified
     * author.
     *
     * @param author the id for the <code>Article</code>. This is a
     * <code>java.lang.String</code>
     */
    public void setAuthor(String author) {
        this.author = author;
    }

    /**
     * Returns a String representing the specified <code>Article</code> object.
     *
     * @return a string representation of the specified Article.
     */
    @Override
    public String toString() {
        return "Article{" + "id=" + id + ", title=" + title + ", image=" + image + ", shortContent=" + shortContent + ", content=" + content + ", date=" + date + ", author=" + author + '}';
    }

}
