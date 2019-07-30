package com.webtiphadoan.service;


import com.webtiphadoan.model.News_Model;
import com.webtiphadoan.model.Personnel_Model;
import com.webtiphadoan.repository.News_Repositoty;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class News_Servicelmpl implements News_Service {

    @Autowired
    News_Repositoty news_repositoty;

    @Override
    public List<News_Model> getNews_All() {return (List<News_Model>) news_repositoty.findAll();
    }
    @Override
    public List<News_Model> getNewsByView() {return ( List<News_Model>) news_repositoty.Order_Views();
    }
    @Override
    public List<News_Model> getNews_connection(int id) {return ( List<News_Model>) news_repositoty.News_connection(id);
    }
    @Override
    public News_Model getNewsById(int id) {
        return news_repositoty.findById((int) id).get();
    }

    @Override
    public void saveOrUpdate(News_Model news_model) {news_repositoty.save(news_model);
    }

    @Override
    public void deleteNews(int id) {news_repositoty.deleteById((id));
    }
    @Override
    public List<News_Model> getNewsByChuyenMuc(String chuyenmuc) {
        return news_repositoty.Find_News_chuyenmuc(chuyenmuc);
    }


}