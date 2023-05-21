package com.example.demo.Mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import java.util.*;
import com.example.demo.Dto.JqgridDto;

@Repository
@Mapper
public interface JqgridMapper {
    public List<JqgridDto> getJqgrid();
}
