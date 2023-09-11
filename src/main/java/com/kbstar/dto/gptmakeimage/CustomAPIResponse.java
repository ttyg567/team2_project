package com.kbstar.dto.gptmakeimage;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.util.List;
import java.util.Locale;

public class CustomAPIResponse {
    public static ResponseEntity<List<String>> getResponseEntity(Locale locale, String code, List<String> data) {
        // 여기에서 응답을 생성하고 반환합니다.
        // 예를 들어, HttpStatus.OK와 함께 ResponseEntity를 생성할 수 있습니다.
        return new ResponseEntity<>(data, HttpStatus.OK);
    }

    // 필요한 경우 다른 응답 유형을 지원하는 메서드를 추가할 수 있습니다.
}
