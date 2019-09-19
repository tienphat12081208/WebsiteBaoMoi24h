package com.webtiphadoan.service;


import com.webtiphadoan.model.News_Model;

import java.util.List;

public interface News_Service {

    public List<News_Model> Select_All_withTT();

    public List<News_Model> getNews_All();
    public News_Model getNewsById(int id);
    public List<News_Model> getNewsByView();

    public List<News_Model> getNews_connection(int id);

    public void saveOrUpdate(News_Model news_model);

    public void deleteNews(int id);

    public List<News_Model> getNewsByChuyenMuc(int chuyenmuc);
    List<News_Model>  New_news();
}
