package com.webtiphadoan.controller;


import com.webtiphadoan.model.News_Model;
import com.webtiphadoan.model.Number_View_Model;
import com.webtiphadoan.model.Personnel_Model;
import com.webtiphadoan.repository.News_Repositoty;
import com.webtiphadoan.repository.Number_View_Repository;
import com.webtiphadoan.service.News_Service;
import com.webtiphadoan.service.Number_View_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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

    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public ModelAndView News_List(@ModelAttribute("news_form") News_Model news_model,HttpSession session ) {
        ModelAndView model_view = new ModelAndView("News_List");
        List<News_Model> news_model_LIST = news_service.getNews_All();
        model_view.addObject("obj_new_list", news_model_LIST);
        return model_view;


    }
    @RequestMapping(value="/save_news", method=RequestMethod.POST)
    public ModelAndView Save_News(@ModelAttribute("news_form") News_Model news_model, HttpSession session ) {
        List<Number_View_Model> number_view_models_FIND= number_view_repository.Find_View(news_model.getId());
        if(!number_view_models_FIND.isEmpty()) //đã tồn tại
        {
            news_service.saveOrUpdate(news_model);
            return new ModelAndView("redirect:/news");
        }
        else {
            java.util.Date date=new java.util.Date(); //Thêm mới
            news_model.setThoigian(date);

            news_service.saveOrUpdate(news_model);
            number_view_repository.Insert_View(news_model.getId(),0);
            return new ModelAndView("redirect:/news");
        }
    }
    @RequestMapping(value="/add_News", method=RequestMethod.GET)
    public ModelAndView Add_News() {
        ModelAndView model_view= new ModelAndView();
        News_Model news_model=new News_Model();
        model_view.addObject("news_form",news_model);
        model_view.setViewName("News_FORM");
        return model_view;
    }
    @RequestMapping(value="/delete_news/{id}", method=RequestMethod.GET)
    public ModelAndView Delete_News(@PathVariable("id") int id) {
        number_view_repository.Delete_View(id);
        news_service.deleteNews(id);
        return new ModelAndView("redirect:/news");
    }
    @RequestMapping(value = "/update_news/{id}", method = RequestMethod.GET)
    public ModelAndView Edit_News(@PathVariable int id) {
        ModelAndView model_view = new ModelAndView();
        News_Model news_model_EDIT = news_service.getNewsById(id);
        model_view.addObject("news_form", news_model_EDIT);
        model_view.setViewName("News_FORM");

        return model_view;

    }
    @RequestMapping(value = "/shows_news/{id}", method = RequestMethod.GET)
    public ModelAndView Show_News(@PathVariable int id) {
        ModelAndView model_view = new ModelAndView();
        News_Model news_model_SHOW_news = news_service.getNewsById(id);
        number_view_repository.Update_View(id);
        List<News_Model> news_model_news_connection= news_service.getNews_connection(id);
        model_view.addObject("Show_news_obj_lienquan", news_model_news_connection);
        model_view.addObject("show_news_obj", news_model_SHOW_news);
        model_view.setViewName("Show_Newss");
        return model_view;

    }
    @RequestMapping(value = "/xahoi", method = RequestMethod.GET)
    public ModelAndView News_XaHoi(@ModelAttribute("news_form_xahoi") News_Model news_model) {
        ModelAndView model_view = new ModelAndView();
        List<News_Model> news_model_XAHOI = news_repositoty.Find_News_chuyenmuc("Xã Hội");
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
        List<News_Model> news_model_THETHAO = news_repositoty.Find_News_chuyenmuc("Thể thao");
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




}
