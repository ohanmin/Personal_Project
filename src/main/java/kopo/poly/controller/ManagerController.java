package kopo.poly.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Slf4j
@Controller
@RequestMapping(value = "manager")
public class ManagerController {
    @GetMapping(value = "/member_management")
    public String memberManagement(){
        return "";
    }
    @GetMapping(value = "/member_delete")
    public String memberDelete(){
        return "";
    }
    @GetMapping(value = "/order_list")
    public String orderList(){
        return "";
    }
    @GetMapping(value = "/order_detail")
    public String orderDetail(){
        return "";
    }
    @GetMapping(value = "/product_list")
    public String productList(){
        return "";
    }
    @GetMapping(value = "/product_regist")
    public String productRegist(){
        return "";
    }
    @PostMapping(value = "/product_regist")
    public String productRegiest(HttpServletRequest req){
        return "";
    }
    @GetMapping(value = "/product_edit")
    public String productEdit(){
        return "";
    }
    @PostMapping(value = "/product_edit")
    public String productEdit(HttpServletRequest req){
        return "";
    }
}
