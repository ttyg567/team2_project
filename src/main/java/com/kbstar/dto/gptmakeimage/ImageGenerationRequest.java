package com.kbstar.dto.gptmakeimage;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Getter
@NoArgsConstructor
public class ImageGenerationRequest implements Serializable {
    private String prompt;
    private int n;
    private String size;
    private String response_format; // 추가: 이미지 응답 형식

    @Builder
    public ImageGenerationRequest(String prompt, int n, String size) {
        this.prompt = prompt;
        this.n = n;
        this.size = size;
        this.response_format = "url"; // 이미지 응답 형식을 "url"로 설정
    }
}