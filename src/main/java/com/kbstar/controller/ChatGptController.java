package com.kbstar.controller;

import com.kbstar.dto.gptmakeimage.CommentRequest;
import com.kbstar.dto.gptmakeimage.CustomAPIResponse;
import com.kbstar.dto.gptmakeimage.CustomResponseCode;
import com.kbstar.service.ChatGptService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@RestController
@RequiredArgsConstructor
@RequestMapping("/chat-gpt")
public class ChatGptController {
    private final ChatGptService chatGptService;

    @PostMapping("/image-generation")
    public ResponseEntity<List<String>> sendComment(
            Locale locale,
            HttpServletRequest request,
            HttpServletResponse response,
            @RequestBody CommentRequest commentRequest) {
        String code = CustomResponseCode.CD_SUCCESS.getMessage();
        List<String> imageUrls = new ArrayList<>();
        try {
            imageUrls = chatGptService.makeImages(commentRequest);
        } catch (Exception e) {
            // 예외 처리를 진행하고 필요한 경우 메시지를 가져옴
            code = CustomResponseCode.CD_ERROR.getMessage();
        }
        return CustomAPIResponse.getResponseEntity(locale, code, imageUrls);
    }

}
