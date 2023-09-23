package com.kbstar.dto.gptmakeimage;

public enum CustomResponseCode {
    CD_SUCCESS("Success"),
    CD_ERROR("Error");

    private final String message;

    CustomResponseCode(String message) {
        this.message = message;
    }

    public String getMessage() {
        return message;
    }
}
