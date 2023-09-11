package com.kbstar.dto.gptmakeimage;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.util.List;
import java.util.Locale;

public class CustomAPIResponse {
    public static ResponseEntity<List<String>> getResponseEntity(Locale locale, String code, List<String> data) {
        // 응답을 생성 & 반환
        return new ResponseEntity<>(data, HttpStatus.OK);
    }
}
