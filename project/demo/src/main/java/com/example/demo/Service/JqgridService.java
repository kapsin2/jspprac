package com.example.demo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Mapper.JqgridMapper;
import com.example.demo.Dto.*;
import java.util.*;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class JqgridService {

    @Autowired
    private JqgridMapper jqgridMapper;

    public List<JqgridDto> getJqgird() {
        return jqgridMapper.getJqgrid();
    }
    
}
