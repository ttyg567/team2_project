package com.kbstar.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;

@Configuration
public class ChatGptConfig {
    @Bean
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }
    public static final String AUTHORIZATION = "Authorization";
    public static final String BEARER = "Bearer ";
    public static final String MEDIA_TYPE = "application/json; charset=UTF-8";
    public static final String IMAGE_URL = "https://api.openai.com/v1/images/generations";
    public static final int IMAGE_COUNT = 1;//  1~10
    public static final String IMAGE_SIZE = "256x256"; // '256x256', '512x512', '1024x1024'
}


