package kopo.poly.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Slf4j
@RequestMapping(value = "account")
public class AccountController {
    @GetMapping(value="/summary")
    public String summary(){
        return "/account/summary";
    }

    @GetMapping(value="/download")
    public String download(){
        return "/account/download";
    }
    @GetMapping(value = "/details")
    public String details(){
        return "/account/details";
    }
    @PostMapping(value= "/details")
    public String details(@RequestParam String name){
        return "/account/details";
    }
    @GetMapping(value = "/password_changer")
    public String passwordChanger(){
        return "/account/password_changer";
    }
    @PostMapping(value = "/password_changer")
    public String passwordChanger(@RequestParam String password){
        return "/account/passowrd_changer";
    }
}
