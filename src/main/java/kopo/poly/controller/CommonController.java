package kopo.poly.controller;

import kopo.poly.dto.MailDTO;
import kopo.poly.dto.MemberDTO;
import kopo.poly.dto.ProductDTO;
import kopo.poly.service.ICommonService;
import kopo.poly.service.IMemberService;
import kopo.poly.util.CmmUtil;
import kopo.poly.util.EncryptUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@Slf4j
@RequestMapping(value = "common")
public class CommonController {
    @Resource(name = "ProductService")
    private IProductService productService;
    @Resource(name = "MemberService")
    private IMemberService memberService;
    @GetMapping(value = "/join")
    public String join(){

        return "/common/join";
    }
    @PostMapping(value = "/join")
    public String join(HttpServletRequest req, HttpSession session, ModelMap modelMap){
        String msg = "";
        MemberDTO mDTO = null;
        try{
            String member_email = CmmUtil.nvl(req.getParameter("member_email"));
            String member_password = CmmUtil.nvl(req.getParameter("member_password"));
            log.info("member_email : "+ member_email);
            log.info("member_password : " + member_password);
            mDTO = new MemberDTO();
            mDTO.setMember_email(member_email);
            mDTO.setMember_password(EncryptUtil.encHashSHA256(member_password));
            int res = memberService.join(mDTO);
            log.info("회원가입 결과 : " + res);
            if(res ==1){
                msg = "회원가입되었습니다.";
            }else{
                msg = "오류로 인해 회원가입 실패했습니다. ";
            }
        }catch (Exception e){
            msg = "실패했습니다. : " + e.toString();
            log.info(e.toString());
            e.printStackTrace();
        }finally {
            modelMap.addAttribute("msg", msg);
            modelMap.addAttribute("mDTO", mDTO);
        }
        return "/common/join";
    }
    @GetMapping(value = "/login")
    public String login(){
        return "/common/login";
    }
    @PostMapping(value = "/login")
    public String login(HttpServletRequest req, HttpSession session, ModelMap modelMap) throws Exception {
        int res = 0;
        MemberDTO memberDTO = null;
        try{
            String member_email = CmmUtil.nvl(req.getParameter("member_email"));
            String member_password = CmmUtil.nvl(req.getParameter("member_password"));
            memberDTO = new MemberDTO();
            memberDTO.setMember_email(member_email);
            memberDTO.setMember_password(EncryptUtil.encHashSHA256(member_password));
            res = memberService.login(memberDTO);
            log.info("res : " + res);
            if(res==1) {
                session.setAttribute("member_session", member_email);
            }
        }catch (Exception e){
            res = 2;
            log.info(e.toString());
            e.printStackTrace();
        }finally {
            modelMap.addAttribute("res", String.valueOf(res));
            memberDTO = null;
        }
        return "/common/login";
    }
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("member_session");
        return "/main";
    }
    @GetMapping(value = "/password_finder")
    public String passwordFinder(){
        return "/common/password_finder";
    }
    @PostMapping(value ="/password_finder")
    public String passwordFinder(HttpServletRequest req, ModelMap modelMap, HttpSession session){
        String toMail = CmmUtil.nvl(req.getParameter("member_email"));
        String title = "일러스트 비밀번호 재설정 링크";
        String contents = CmmUtil.nvl("http://localhost:10000/common/password_reset?member_email="+toMail);
        MailDTO mailDTO = new MailDTO();
        mailDTO.setToMail(toMail);
        mailDTO.setTitle(title);
        mailDTO.setContents(contents);
        int res = memberService.sendMail(mailDTO);
        if(res == 1){
            log.info(this.getClass().getName() + "mail.sendMail success");
        }else{
            log.info(this.getClass().getName() + "mail.sendMail fail");
        }
        modelMap.addAttribute("res", String.valueOf(res));
        return "/common/password_finder";
    }
    @GetMapping(value = "/password_reset")
    public String passwordReset(HttpServletRequest req, ModelMap modelMap){
        String email = req.getParameter("member_email");
        int res = memberService.equalsEmail(email);
        if(res == 1){
            return "/common/password_reset";

        }else{
            String msg = "유효한 재설정 링크가 아닙니다.";
            modelMap.addAttribute("msg", msg);
            return "/main";
        }
    }
    @PostMapping(value = "/password_reset")
    public String passwordReset(HttpServletRequest req, ModelMap modelMap, HttpSession session){
        String member_email = req.getParameter("member_email");
        String member_password = req.getParameter("member_password");
        MemberDTO memberDTO = new MemberDTO();
        memberDTO.setMember_email(member_email);
        memberDTO.setMember_password(member_password);
        int res = memberService.resetPassword(memberDTO);
        if(res == 1){
            session.setAttribute("member_session", member_email);
            return "/main";
        }else{
            String msg = "에러 발생";
            modelMap.addAttribute("msg", msg);
            return "/common/password_reset";
        }
    }

}
