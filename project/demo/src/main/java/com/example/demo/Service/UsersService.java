package com.example.demo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.demo.Dto.UserDto;
import com.example.demo.Mapper.MemberMapper;

import lombok.RequiredArgsConstructor;


@Service
@RequiredArgsConstructor
public class UsersService {

   @Autowired
   private MemberMapper memberMapper;

   public int ckNick(String custom_user_nick) {
      if(memberMapper.login(custom_user_nick) == null) return 0;
      else return 1;
   }

   public int userSignUp(UserDto userDto) {
      if(memberMapper.login(userDto.getCustom_user_nick()) != null) return 0;
      else {
         memberMapper.signUp(userDto);
         return 1; 
      }
   }

   public int userLogin(String user_nick,String user_pswd,HttpSession session, HttpServletResponse response)  {
      if(memberMapper.login(user_nick) == null) return 0;

      UserDto userdto = memberMapper.login(user_nick);

      if(userdto.getCustom_user_pswd().equals(user_pswd)) {
         session.setMaxInactiveInterval(30*60);
         session.setAttribute("user_nick", user_nick);


         Cookie cookie = new Cookie("user_nick", user_nick);
         cookie.setMaxAge(60*60); //쿠키 유효 기간: 하루로 설정(60초 * 60분 * 24시간)
         cookie.setPath("/"); //모든 경로에서 접근 가능하도록 설정
         response.addCookie(cookie);

         return 1;
      }
      else return 0;
   }

   public int userLogout(HttpSession session, HttpServletResponse response,HttpServletRequest request) {
      session.removeAttribute("user_nick");
      Cookie[] cookies = request.getCookies();
      if(cookies != null){
         for(int i=0; i < cookies.length; i++){
            // 쿠키의 유효시간을 0으로 설정하여 바로 만료시킨다.
            cookies[i].setMaxAge(0);
            // 응답에 쿠키 추가
            response.addCookie(cookies[i]);
         }
         return 1;
      }
      return 0;
   }
}
