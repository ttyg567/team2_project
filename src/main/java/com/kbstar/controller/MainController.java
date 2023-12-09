package com.kbstar.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.Banner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
public class MainController {

    @Value("${chatgpt.api-key}")
    private String apikey;




    @Value("${YOUR_PUBLIC_KEY}")
    private String emailapikey;

    @RequestMapping("/")
    public String main(Model model) {
        return "index";
    }

    @RequestMapping("/app-ecommerce-category-list")
    public String appecommercecategorylist(Model model) {
        return "app-ecommerce-category-list";
    }

    @RequestMapping("/gptmakeimage")
    public String gptMakeImage(Model model){
        return "gptmakeimage";
    }

    @RequestMapping("/makecontract")
    public String makeContract(Model model){
        model.addAttribute("center", "makecontract");
        return "index";
    }

    @RequestMapping("/app-chat")
    public String makeContractMain(Model model){
        model.addAttribute("center", "app-chat");
        return "index";
    }

    @RequestMapping("/app-calendar")
    public String appCalendar(Model model){
        return "app-calendar";
    }

/*    @RequestMapping("/app-calendar")
    public String appCalendar(Model model){
        model.addAttribute("center", "calendar");
        return "index";
    }*/

    @RequestMapping("/letter")
    public String letter(Model model){
        model.addAttribute("apikey",apikey);
        model.addAttribute("emailapikey",emailapikey);
        return "letter/letterIndex";
    }

    @RequestMapping("/login")
    public String login(Model model) {
        model.addAttribute("center", "login");
        return "index";
    }

    @RequestMapping("/calendar")
    public String calendar(Model model) {
        model.addAttribute("center", "calendar");
        return "index";
    }



}
