package com.example.demo.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.http.ResponseEntity;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.example.demo.Dto.LoginDto;
import com.example.demo.Dto.UserDto;
import com.example.demo.Service.UsersService;

import lombok.RequiredArgsConstructor;



@Controller
@RequiredArgsConstructor
public class UserController{

    @Autowired
    private UsersService usersService;

    @GetMapping("/")
    public String main() {
        return "page-login";
    }

    @GetMapping("/login")
    public String login() {
        return "page-login";
    }

    @GetMapping("/index")
    public String index() {
        return "index";
    }
    
    @GetMapping("/signup")
    public String signUp() {
        return "page-signup";
    }

    @PostMapping("/signup")
    public ResponseEntity<Integer> signUp2(@RequestBody UserDto userdto) {
        return ResponseEntity.ok(usersService.userSignUp(userdto));
    }

    @PostMapping("/ckNick")
    public ResponseEntity<Integer> ckNick(@RequestBody UserDto userdto) {
        int num = usersService.ckNick(userdto.getCustom_user_nick());
        System.out.println(num+"-----------------");
        return ResponseEntity.ok(num);
    }

    @PostMapping("/login")
    public ResponseEntity<Integer> login(@RequestBody LoginDto logindto,HttpSession session, HttpServletResponse response) {
        int num = usersService.userLogin(logindto.getCustom_user_nick(),logindto.getCustom_user_pswd(),session,response);
        return ResponseEntity.ok(num);
    }

    @PostMapping("/logout")
    public ResponseEntity<Integer> logout(HttpSession session, HttpServletResponse response,HttpServletRequest request) {
        int num = usersService.userLogout(session,response,request);
        return ResponseEntity.ok(num);
    }
}
 