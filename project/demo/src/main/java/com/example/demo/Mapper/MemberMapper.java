package com.example.demo.Mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.example.demo.Dto.UserDto;

@Repository
@Mapper
public interface MemberMapper {
    public int selectTest();
    public void signUp(UserDto userDto);
    public String ck_nick(String user_nick);
    public UserDto login(String user_nick);
}
