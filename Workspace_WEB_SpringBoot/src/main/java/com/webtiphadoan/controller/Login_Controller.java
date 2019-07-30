package com.webtiphadoan.controller;

import com.webtiphadoan.model.Login_Model;
import com.webtiphadoan.model.News_Model;
import com.webtiphadoan.model.Personnel_Model;
import com.webtiphadoan.repository.Login_Repository;
import com.webtiphadoan.repository.Number_View_Repository;
import com.webtiphadoan.service.Login_Service;
import com.webtiphadoan.service.News_Service;
import com.webtiphadoan.service.Personnel_Service;
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



    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView loginPage() {
        ModelAndView model = new ModelAndView();
        Login_Model login = new Login_Model();
        model.addObject("loginForm", login);
        model.setViewName("loginPage");
        return model;
    }


    @RequestMapping(value = "/errorlogin", method = RequestMethod.POST)
    public ModelAndView login(@ModelAttribute("loginForm") Login_Model login_model, HttpSession session) {
        ModelAndView model_view = new ModelAndView();

        List<Login_Model> login = loginService.getAccount2(login_model.getUser(), login_model.getPass());
            String messger="";

        if (!login.isEmpty()) {
            String user_name = login_model.getUser();
            String name="";
            String idvaitro="";
            for (Login_Model logins:login) {
                  idvaitro =logins.getIdvaitro();
                  name=logins.getName();

                   break;
            }
            session.setAttribute("User_Session", user_name);
            session.setAttribute("Name", name);
            session.setAttribute("IDvaitro", idvaitro);
            return new ModelAndView("redirect:/");


        } else {
            messger="Thong bao loi login";
            model_view.addObject("message",messger);
            model_view.setViewName("loginPage");
            return model_view;
        }
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView Home() {
        ModelAndView model = new ModelAndView();
        List<News_Model> News_model_HOME = news_service.getNews_All();

        List<News_Model> number_view_models= news_service.getNewsByView();
        List<News_Model> news_models_Numberview = new ArrayList<>();
        int flag=0;
        for (News_Model number_view:number_view_models) {
               news_models_Numberview.add(number_view);
               flag++;
              if(flag>=4){

                  break;
              }

        }
        model.addObject("Number_views_obj", news_models_Numberview);
        model.addObject("Home_obj", News_model_HOME);
        model.setViewName("Home");
        return model;
    }
    @RequestMapping(value = "/hihi", method = RequestMethod.GET)
    public ModelAndView Home_1() {
        ModelAndView model = new ModelAndView();
        List<News_Model> number_view_models= news_service.getNewsByView();
        model.addObject("Number_views_obj", number_view_models);
        model.setViewName("Hihi");
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

