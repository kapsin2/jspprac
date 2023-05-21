package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Service.APIService;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class APIController {

    @Autowired
    private APIService apiService;

    @GetMapping("/api")
    public String main() {
        return "naverapi";
    }

    @GetMapping("/api/sentence")
    public ResponseEntity<String[]> getTransSentence(@RequestParam("sentence") String sentence) {
        String[] sentences = new String[2];
        sentences = apiService.getTransSentence(sentence);
        return ResponseEntity.ok(sentences);
    }
}
