package com.lynas.controller;

import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
    @RequestMapping(value="/")
    public String test(Model model){

        SecurityContext context = SecurityContextHolder.getContext();

        model.addAttribute("message", "You are logged in as " + context.getAuthentication().getName());
        return "test";
    }
}
