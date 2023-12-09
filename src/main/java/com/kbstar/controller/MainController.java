package com.kbstar.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
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

    //이미지 생성 팝업 화면
    @RequestMapping("/gptmakeimage")
    public String gptMakeImage(Model model){
        return "gptmakeimage";
    }

    //계약서 작성
    @RequestMapping("/makecontract")
    public String makeContract(Model model){
        model.addAttribute("center", "makecontract");
        return "index";
    }

    //계약서 작성 표지화면
    @RequestMapping("/contractMain")
    public String makeContractMain(Model model){
        model.addAttribute("center", "contractMain");
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
