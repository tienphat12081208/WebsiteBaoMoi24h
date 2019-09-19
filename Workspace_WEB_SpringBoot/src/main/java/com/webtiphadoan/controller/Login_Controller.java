package com.webtiphadoan.controller;

import com.webtiphadoan.model.*;
import com.webtiphadoan.repository.Login_Repository;
import com.webtiphadoan.repository.Number_View_Repository;
import com.webtiphadoan.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

import java.util.ArrayList;
import java.util.List;

@Controller

public class Login_Controller {
    @Autowired
    Login_Service loginService;
    @Autowired
    Login_Repository loginRepository;
    @Autowired
    Personnel_Service personnelService;
    @Autowired
    News_Service news_service;
    @Autowired
    Number_View_Repository number_view_repository;
    @Autowired
    Chuyenmuc_Service chuyenmuc_service;
    @Autowired
    Trangthai_Service trangthai_service;




    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView loginPage() {
        ModelAndView model = new ModelAndView();
        Login_Model login = new Login_Model();
        model.addObject("login", login);
        model.setViewName("LoginModal");
        return model;
    }


    @RequestMapping(value = "/errorlogin", method = RequestMethod.POST)
    public ModelAndView login(@ModelAttribute("login") Login_Model login_model, HttpSession session) {
        ModelAndView model_view = new ModelAndView();

        List<Login_Model> login = loginService.getAccount2(login_model.getUser(), login_model.getPass());
            String messger="";

        if (!login.isEmpty()) {
            String user_name = login_model.getUser();
            Integer id_user=null;
            String name="";
            String idvaitro="";
            for (Login_Model logins:login) {
                  idvaitro =logins.getIdvaitro();
                  name=logins.getName();
                  id_user= logins.getId();

                   break;
            }
            session.setAttribute("ID_User", id_user);
            session.setAttribute("User_Session", user_name);
            session.setAttribute("Name", name);
            session.setAttribute("IDvaitro", idvaitro);

            return new ModelAndView("redirect:/");


        } else {
            messger="Thong bao loi login";
            model_view.addObject("message",messger);
            model_view.setViewName("LoginModal");
            return model_view;
        }
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView Home(HttpSession session) {
        ModelAndView model = new ModelAndView();
        List<News_Model> News_model_HOME = news_service.Select_All_withTT();
        List<News_Model> number_view_models= news_service.getNewsByView();
        List<News_Model> news_models_Numberview = new ArrayList<>();
        List<Trangthai_Model> trangthai_models= trangthai_service.SelectAll();
        List<News_Model> New_news= news_service.New_news();
        int flag=0;
        for (News_Model number_view:number_view_models) {
               news_models_Numberview.add(number_view);
               flag++;
              if(flag>=4){

                  break;
              }

        }
        model.addObject("New_news_obj", New_news);
        model.addObject("Number_views_obj", news_models_Numberview);
        model.addObject("Home_obj", News_model_HOME);
        model.addObject("Trangthai_obj",trangthai_models);
        model.setViewName("Home_News");
        return model;
    }



    @RequestMapping(value = "/addaccount", method = RequestMethod.GET)
    public ModelAndView addTK() {
        ModelAndView model_view = new ModelAndView();
        Personnel_Model personnel_model = new Personnel_Model();
        model_view.addObject("AddAccountForm", personnel_model);
        model_view.setViewName("AddAccount");
        return model_view;
    }

    @RequestMapping(value = "/saveaccount", method = RequestMethod.POST)
    public ModelAndView saveTK(@ModelAttribute("AddAccountForm") Personnel_Model personnel_model) {
        personnelService.saveOrUpdate(personnel_model);

        return new ModelAndView("redirect:/login");
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView Logout(HttpSession session) {
        String User_Session_news="";
        session.setAttribute("User_Session",User_Session_news);
        ModelAndView model_view = new ModelAndView();
        model_view.setViewName("redirect:/");
        return  model_view;
    }


}

