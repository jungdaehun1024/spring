package com.collab.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@Controller
public class MainController extends ExceptionController{

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Locale locale) {
        return "redirect:/mainForm.do";
    }

    @RequestMapping(value = "/mainForm.do")
    public String mainForm(Authentication auth, HttpServletRequest request, Model model, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();

        return "main";
    }
}
