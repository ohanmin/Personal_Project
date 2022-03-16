package kopo.poly.controller;

import kopo.poly.service.IMemberService;
import kopo.poly.util.CmmUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Slf4j
@Controller
@RequestMapping(value = "/member")
public class MemberController {
    @Resource(name = "MemberService")
    private IMemberService memberService;
    @RequestMapping(value = "/join", method = RequestMethod.GET)
    public String join(){
        return "/member/join";
    }
    @RequestMapping(value = "/join", method = RequestMethod.POST)
    public String join(HttpServletRequest req){
        String member_id
        return "/member/join_result";
    }
    @RequestMapping(value = "/login", method= RequestMethod.GET)
    public String login() throws Exception{
        log.info(this.getClass().getName() + ".Memberlogin start");
        return "/member/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(ModelMap model, HttpServletRequest req, HttpSession session){
        String member_id = req.getParameter("member_id");
        String member_password = req.getParameter("member_password");
        return "/home";
    }
}
