package kopo.poly.controller;

import kopo.poly.dto.MemberDTO;
import kopo.poly.service.IMemberService;
import kopo.poly.util.CmmUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
    public String join(MemberDTO memberDTO){

        String member_id;
        return "/member/join_result";
    }
    @RequestMapping(value = "/login", method= RequestMethod.GET)
    public String login(HttpServletRequest req, @RequestParam(value="error",required = false)String error, Model model) {
        log.info(this.getClass().getName() + ".Memberlogin start");
        String referer = req.getHeader("Referer");
        if(referer != null){
            req.getSession().setAttribute("prevPage", referer);
        }else{
            referer = "http://localhost:8080/home";
            req.getSession().setAttribute("prevPage", referer);
        }
        model.addAttribute("error", error);
        return "/member/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(ModelMap model, HttpServletRequest req, HttpSession session){
        String member_id = req.getParameter("member_id");
        String member_password = req.getParameter("member_password");
        return "/home";
    }
    @RequestMapping(value = "/defaultUrl", method = RequestMethod.GET)
    public String loginRedirectPage(HttpServletRequest req){
        String referer = req.getHeader("Referer");
        referer = "http://localhost:8080/home";
        req.getSession().setAttribute("prevPage", referer);
        return "redirect:/home";
    }

}
