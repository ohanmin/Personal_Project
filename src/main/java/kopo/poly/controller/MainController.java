package kopo.poly.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Slf4j
@Controller
@RequestMapping(value = "main")
public class MainController {
    @GetMapping(value = "/catagory")
    public String catagory(){
        return "";
    }
    @GetMapping(value = "/search")
    public String search(){
        return "";
    }
    @PostMapping(value = "/search")
    public String search(HttpServletRequest req){
        return "";
    }
    @GetMapping(value = "/product")
    public String product(){
        return "";
    }
    @GetMapping(value = "/fixed_charge")
    public String fixedCharge(){
        return "";

    }
    @GetMapping(value = "/payments")
    public String payments(){
        return "";

    }
    @PostMapping(value = "/payments")
    public String payments(HttpServletRequest req){
        return  "";
    }
}
