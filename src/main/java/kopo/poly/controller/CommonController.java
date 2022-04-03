package kopo.poly.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@Slf4j
@RequestMapping(value = "common")
public class CommonController {
    @GetMapping(value = "/join")
    public String join(){
        return "/common/join";
    }
    @PostMapping(value = "/join")
    public String join(@RequestParam String d){
        return "/common/join";
    }
    @GetMapping(value = "/login")
    public String login(){
        return "/common/login";
    }
    @PostMapping(value = "/login")
    public String login(HttpServletRequest req){
        return "/common/login";
    }
    @GetMapping(value = "/password_finder")
    public String passwordFinder(){
        return "/common/password_finder";
    }
    @PostMapping(value ="/password_finder")
    public String passwordFinder(HttpServletRequest req){
        return "/common/password_finder";
    }
    @GetMapping(value = "/password_reset")
    public String passwordReset(){
        return "/common/password_reset";
    }
    @PostMapping(value = "/password_reset")
    public String passwordReset(HttpServletRequest req){
        return "/common/password_reset";
    }

}
