package com.kbstar.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j /*로그 찍는 골뱅이 이거 넣으면 log.info 사용가능 */
@Controller
@RequestMapping("/smc")
public class SmcController {
    String dir = "smc/";

    @Value("${chatgptapikey}")
    String chatgptapikey;

    @RequestMapping("/")
    public String smc(Model model) throws Exception {
        model.addAttribute("center", dir + "smc");
        model.addAttribute("chatgptapikey", chatgptapikey);
        return "index";
    }

    @RequestMapping("/editor")
    public String editor(Model model) throws Exception {
        model.addAttribute("center", dir + "editor");
        return "index";
    }


}
