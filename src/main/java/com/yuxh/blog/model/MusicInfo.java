package com.yuxh.blog.model;

import java.util.Date;

public class MusicInfo {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column music_info.music_id
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    private Integer musicId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column music_info.music_name
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    private String musicName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column music_info.picture_url
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    private String pictureUrl;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column music_info.music_description
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    private String musicDescription;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column music_info.singer
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    private String singer;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column music_info.music_title
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    private String musicTitle;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column music_info.music_content
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    private String musicContent;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column music_info.create_date
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    private Date createDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column music_info.music_url
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    private String musicUrl;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column music_info.music_author
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    private String musicAuthor;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column music_info.music_uuid
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    private String musicUuid;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column music_info.music_id
     *
     * @return the value of music_info.music_id
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public Integer getMusicId() {
        return musicId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column music_info.music_id
     *
     * @param musicId the value for music_info.music_id
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public void setMusicId(Integer musicId) {
        this.musicId = musicId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column music_info.music_name
     *
     * @return the value of music_info.music_name
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public String getMusicName() {
        return musicName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column music_info.music_name
     *
     * @param musicName the value for music_info.music_name
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public void setMusicName(String musicName) {
        this.musicName = musicName == null ? null : musicName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column music_info.picture_url
     *
     * @return the value of music_info.picture_url
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public String getPictureUrl() {
        return pictureUrl;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column music_info.picture_url
     *
     * @param pictureUrl the value for music_info.picture_url
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public void setPictureUrl(String pictureUrl) {
        this.pictureUrl = pictureUrl == null ? null : pictureUrl.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column music_info.music_description
     *
     * @return the value of music_info.music_description
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public String getMusicDescription() {
        return musicDescription;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column music_info.music_description
     *
     * @param musicDescription the value for music_info.music_description
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public void setMusicDescription(String musicDescription) {
        this.musicDescription = musicDescription == null ? null : musicDescription.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column music_info.singer
     *
     * @return the value of music_info.singer
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public String getSinger() {
        return singer;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column music_info.singer
     *
     * @param singer the value for music_info.singer
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public void setSinger(String singer) {
        this.singer = singer == null ? null : singer.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column music_info.music_title
     *
     * @return the value of music_info.music_title
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public String getMusicTitle() {
        return musicTitle;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column music_info.music_title
     *
     * @param musicTitle the value for music_info.music_title
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public void setMusicTitle(String musicTitle) {
        this.musicTitle = musicTitle == null ? null : musicTitle.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column music_info.music_content
     *
     * @return the value of music_info.music_content
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public String getMusicContent() {
        return musicContent;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column music_info.music_content
     *
     * @param musicContent the value for music_info.music_content
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public void setMusicContent(String musicContent) {
        this.musicContent = musicContent == null ? null : musicContent.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column music_info.create_date
     *
     * @return the value of music_info.create_date
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column music_info.create_date
     *
     * @param createDate the value for music_info.create_date
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column music_info.music_url
     *
     * @return the value of music_info.music_url
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public String getMusicUrl() {
        return musicUrl;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column music_info.music_url
     *
     * @param musicUrl the value for music_info.music_url
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public void setMusicUrl(String musicUrl) {
        this.musicUrl = musicUrl == null ? null : musicUrl.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column music_info.music_author
     *
     * @return the value of music_info.music_author
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public String getMusicAuthor() {
        return musicAuthor;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column music_info.music_author
     *
     * @param musicAuthor the value for music_info.music_author
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public void setMusicAuthor(String musicAuthor) {
        this.musicAuthor = musicAuthor == null ? null : musicAuthor.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column music_info.music_uuid
     *
     * @return the value of music_info.music_uuid
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public String getMusicUuid() {
        return musicUuid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column music_info.music_uuid
     *
     * @param musicUuid the value for music_info.music_uuid
     *
     * @mbggenerated Tue Jul 04 16:32:55 CST 2017
     */
    public void setMusicUuid(String musicUuid) {
        this.musicUuid = musicUuid == null ? null : musicUuid.trim();
    }
}