package com.webtiphadoan.controller;


import com.webtiphadoan.model.*;
import com.webtiphadoan.repository.News_Repositoty;
import com.webtiphadoan.repository.Number_View_Repository;
import com.webtiphadoan.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

import java.util.ArrayList;

import java.util.List;

@Controller
public class News_Controller {
    @Autowired
    News_Service news_service;
    @Autowired
    News_Repositoty news_repositoty;
    @Autowired
    Number_View_Repository number_view_repository;
    @Autowired
    Number_View_Service number_view_service;
    @Autowired
    Chuyenmuc_Service chuyenmuc_service;
    @Autowired
    Trangthai_Service trangthai_service;
    @Autowired
    Comment_Service comment_service;










    @RequestMapping(value = "/xahoi", method = RequestMethod.GET)
    public ModelAndView News_XaHoi(@ModelAttribute("news_form_xahoi") News_Model news_model) {
        ModelAndView model_view = new ModelAndView();
        List<News_Model> news_model_XAHOI = (List<News_Model>) news_repositoty.Find_News_chuyenmuc(1);
        model_view.addObject("Xa_Hoi_obj", news_model_XAHOI);
        List<News_Model> number_view_models= news_service.getNewsByView();
        List<News_Model> news_models_Numberview = new ArrayList<>();
        int flag=0;
        for (News_Model number_view:number_view_models) {
             flag++;
            news_models_Numberview.add(number_view);
            if(flag>=4){

                break;
            }

        }
        model_view.addObject("Number_views_obj", news_models_Numberview);
        model_view.addObject("Tieude","Xã hội");
        model_view.setViewName("New_TL_XaHoi");
        return model_view;


    }




    @RequestMapping(value = "/thethao", method = RequestMethod.GET)
    public ModelAndView News_Thethao(@ModelAttribute("news_form_thethao") News_Model news_model) {
        ModelAndView model_view = new ModelAndView();
        List<News_Model> news_model_THETHAO = news_repositoty.Find_News_chuyenmuc(2);
        model_view.addObject("Xa_Hoi_obj", news_model_THETHAO);
        List<News_Model> number_view_models= news_service.getNewsByView();
        List<News_Model> news_models_Numberview = new ArrayList<>();
        int flag=0;
        for (News_Model number_view:number_view_models) {
            news_models_Numberview.add(number_view);
            if(flag>=4){
                break;
            }
            flag++;


        }
        model_view.addObject("Number_views_obj", news_models_Numberview);
        model_view.addObject("Tieude","Thể thao");
        model_view.setViewName("New_TL_XaHoi");
        return model_view;


    }
    @RequestMapping(value = "/shows_news/{id}", method = RequestMethod.GET)
    public ModelAndView Show_News(@PathVariable int id) {
        ModelAndView model_view = new ModelAndView();
        Login_Model login = new Login_Model();
        model_view.addObject("login", login);
        List<Chuyen_Muc_Model> chuyen_muc_model= chuyenmuc_service.GetChuyenmucALL();
        News_Model news_model_SHOW_news = news_service.getNewsById(id);
        List<Comment_Model> comment_models= comment_service.ALL_Comment_For_News(news_model_SHOW_news.getId());
        number_view_repository.Update_View(id);
        List<News_Model> news_model_news_connection= news_service.getNews_connection(id);
        int index=0;
        model_view.addObject("Show_news_obj_lienquan", news_model_news_connection);
        model_view.addObject("show_news_obj", news_model_SHOW_news);
        model_view.addObject("comment_obj", comment_models);
        model_view.addObject("chuyen_muc",chuyen_muc_model);
        model_view.addObject("index_obj", index);
        model_view.setViewName("Page_Show_News");
        return model_view;

    }



}
