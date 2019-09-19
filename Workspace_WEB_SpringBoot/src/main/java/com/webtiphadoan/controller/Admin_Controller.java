package com.webtiphadoan.controller;


import com.webtiphadoan.model.*;

import com.webtiphadoan.repository.News_Repositoty;
import com.webtiphadoan.repository.Number_View_Repository;
import com.webtiphadoan.repository.Personnel_Repsository;

import com.webtiphadoan.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class Admin_Controller {
    @Autowired
    Personnel_Service personnel_service;
    @Autowired
    Personnel_Repsository personnel_repsository;
    @Autowired
    Vaitro_Service vaitro_service;
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



    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView Admin_Home() {
        ModelAndView model_view= new ModelAndView();
        model_view.setViewName("Admin");
        return model_view;
    }
    @RequestMapping(value = "/adminnhansu", method = RequestMethod.GET)
    public ModelAndView Admin_Nhansu(@ModelAttribute("personnel_form") Personnel_Model personnel_model) {
        ModelAndView model_view = new ModelAndView("Admin_NhanSu_List");
        if (personnel_model.getName() == null) {
            personnel_model.setName("");
        }
        List<Personnel_Model> personnel_model_List = personnel_service.getPersonnelByName(personnel_model.getName());
        model_view.addObject("obj_personnel_list", personnel_model_List);
        List<Vaitro_Model> vaitro_models= vaitro_service.GetALLvaitro();
        model_view.addObject("vaitro_OBJ", vaitro_models);
        return model_view;


    }
    @RequestMapping(value = "/adminnews", method = RequestMethod.GET)
    public ModelAndView News_List(@ModelAttribute("admin_news_form") News_Model news_model, HttpSession session ) {
        ModelAndView model_view = new ModelAndView("Admin_News");
        List<Chuyen_Muc_Model> chuyen_muc_models= chuyenmuc_service.GetChuyenmucALL();
        List<News_Model> news_model_LIST = news_service.getNews_All();
        List<Trangthai_Model> trangthai_models=trangthai_service.SelectAll();
        model_view.addObject("obj_new_list", news_model_LIST);
        model_view.addObject("chuyen_muc",chuyen_muc_models);
        model_view.addObject("trangthai_list",trangthai_models);
        return model_view;


    }
    @RequestMapping(value="/add_News", method=RequestMethod.GET)
    public ModelAndView Add_News() {
        ModelAndView model_view= new ModelAndView();
        News_Model news_model=new News_Model();
        List<Chuyen_Muc_Model> chuyen_muc_model= chuyenmuc_service.GetChuyenmucALL();
        model_view.addObject("news_form",news_model);
        model_view.addObject("chuyen_muc",chuyen_muc_model);
        model_view.setViewName("Admin_Them_BaiViet");
        return model_view;
    }
    @RequestMapping(value = "/duyetnews/{id}", method = RequestMethod.GET)
    public ModelAndView Duyet_News(@PathVariable int id) {
        ModelAndView model_view = new ModelAndView();
        List<Chuyen_Muc_Model> chuyen_muc_model= chuyenmuc_service.GetChuyenmucALL();
        News_Model news_model_SHOW_news = news_service.getNewsById(id);
        model_view.addObject("show_news_obj", news_model_SHOW_news);
        model_view.addObject("chuyen_muc",chuyen_muc_model);
        model_view.setViewName("Duyet_news");
        return model_view;

    }
    @RequestMapping(value="/updatetrangthai/{id}", method=RequestMethod.GET)
    public ModelAndView Update_Trangthai(@PathVariable("id") int id) {
        trangthai_service.Update_Trangthai(id);
        return new ModelAndView("redirect:/adminnews");
    }
    @RequestMapping(value="/thembaiviet", method=RequestMethod.GET)
    public ModelAndView addNews() {
        ModelAndView model_view= new ModelAndView();
        News_Model news_model=new News_Model();
        List<Chuyen_Muc_Model> chuyen_muc_model= chuyenmuc_service.GetChuyenmucALL();
        model_view.addObject("news_form",news_model);
        model_view.addObject("chuyen_muc",chuyen_muc_model);
        model_view.setViewName("Admin_Them_BaiViet");
        return model_view;
    }
    @RequestMapping(value="/save_news", method=RequestMethod.POST)
    public ModelAndView Save_News(@ModelAttribute("news_form") News_Model news_model) {
        List<Number_View_Model> number_view_models_FIND= number_view_repository.Find_View(news_model.getId());
        if(!number_view_models_FIND.isEmpty()) //đã tồn tại
        {
            news_service.saveOrUpdate(news_model);
            return new ModelAndView("redirect:/adminnews");
        }
        else {
            java.util.Date date=new java.util.Date(); //Thêm mới
            news_model.setThoigian(date);
            news_service.saveOrUpdate(news_model);
            trangthai_service.Insert_Trangthai(news_model.getId(),0);
            number_view_repository.Insert_View(news_model.getId(),0);
            return new ModelAndView("redirect:/adminnews");
        }
    }
    @RequestMapping(value="/delete_news/{id}", method=RequestMethod.GET)
    public ModelAndView Delete_News(@PathVariable("id") int id) {
        number_view_repository.Delete_View(id);
        trangthai_service.Delete_Trangthai(id);
        news_service.deleteNews(id);
        return new ModelAndView("redirect:/adminnews");
    }
    @RequestMapping(value = "/update_news/{id}", method = RequestMethod.GET)
    public ModelAndView Edit_News(@PathVariable int id) {
        ModelAndView model_view = new ModelAndView();
        List<Chuyen_Muc_Model> chuyen_muc_model= chuyenmuc_service.GetChuyenmucALL();
        News_Model news_model_EDIT = news_service.getNewsById(id);
        model_view.addObject("news_form", news_model_EDIT);
        model_view.addObject("chuyen_muc",chuyen_muc_model);
        model_view.setViewName("Admin_Them_BaiViet");

        return model_view;

    }


}