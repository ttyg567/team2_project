package com.kbstar.service;

import com.kbstar.config.ChatGptConfig;
import com.kbstar.dto.gptmakeimage.CommentRequest;
import com.kbstar.dto.gptmakeimage.ImageGenerationRequest;
import com.kbstar.dto.gptmakeimage.ImageGenerationResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;

@Slf4j

@Service
@RequiredArgsConstructor
public class ChatGptService {
    private final RestTemplate restTemplate;

    @Value("${chatgpt.api-key}")
    private String apiKey;

    public List<String> makeImages(CommentRequest commentRequest) {
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.setContentType(MediaType.parseMediaType(ChatGptConfig.MEDIA_TYPE));
        httpHeaders.add(ChatGptConfig.AUTHORIZATION, ChatGptConfig.BEARER + apiKey);

        ImageGenerationRequest imageGenerationRequest = ImageGenerationRequest.builder()
                .prompt(commentRequest.getComment())
                .n(ChatGptConfig.IMAGE_COUNT)
                .size(ChatGptConfig.IMAGE_SIZE)
                .build();

        HttpEntity<ImageGenerationRequest> requestHttpEntity = new HttpEntity<>(imageGenerationRequest, httpHeaders);

        ResponseEntity<ImageGenerationResponse> responseEntity = restTemplate.postForEntity(
                ChatGptConfig.IMAGE_URL,
                requestHttpEntity,
                ImageGenerationResponse.class
        );

        // 이미지 URL을 추출
        List<String> imageUrls = new ArrayList<>();
        if (responseEntity.getBody() != null && responseEntity.getBody().getData() != null) {
            for (ImageGenerationResponse.ImageURL imageUrl : responseEntity.getBody().getData()) {
                imageUrls.add(imageUrl.getUrl());
            }
        }

        return imageUrls;
    }
}


