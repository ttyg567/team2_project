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

    @RequestMapping("/")
    public String main(Model model) {
        return "index";
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

    @RequestMapping("/app-calendar")
    public String appCalendar(Model model){
        return "app-calendar";
    }

    @RequestMapping("/letter")
    public String letter(Model model){
        model.addAttribute("apikey",apikey);
        return "letter/letterIndex";
    }
}
