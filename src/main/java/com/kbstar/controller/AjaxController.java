package com.kbstar.controller;

import io.github.flashvayne.chatgpt.service.ChatgptService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
public class AjaxController {

    @Autowired
    ChatgptService chatgptService;

    @GetMapping("/gptMakeImage")
    public String gptMakeImage(@RequestParam String comment) throws Exception {
        // 입력된 문자열을 기반으로 이미지 URL 생성
        String imageURL = chatgptService.imageGenerate(comment);
        // 이미지 URL을 반환
        return imageURL;
    }
}
