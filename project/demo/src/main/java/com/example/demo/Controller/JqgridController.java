package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import com.example.demo.Dto.*;
import com.example.demo.Service.JqgridService;

import java.util.*;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class JqgridController {

    @Autowired
    private JqgridService jqgridService;

    @GetMapping("/jqgrid")
    public String main() {
        return "jqgrid";
    }

    @GetMapping("/jqgrids")
    public ResponseEntity<List<JqgridDto>> getJqgird() {
        return ResponseEntity.ok(jqgridService.getJqgird());
    }
}
