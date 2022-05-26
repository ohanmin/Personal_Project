package kopo.poly.controller;

import kopo.poly.service.ICommonService;
import kopo.poly.service.IMemberService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@Slf4j
@RequestMapping(value = "common")
public class CommonController {
    @Resource(name = "CommonService")
    private ICommonService commonService;
    @GetMapping(value = "/join")
    public String join(){

        return "/common/join";
    }
    @PostMapping(value = "/join")
    public String join(HttpServletRequest req, HttpSession session, ModelMap modelMap){

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
    @GetMapping(value = "/category")
    public String category(){
        return "/common/category";
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
