package kopo.poly.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Slf4j
@Controller
public class HomeController {
    @GetMapping(value = "main")
    public String main(){
        return "/main";
    }
    @GetMapping(value = "home")
    public String home(){
        return "/home";
    }
}
