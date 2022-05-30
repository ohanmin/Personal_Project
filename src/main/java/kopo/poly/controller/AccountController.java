package kopo.poly.controller;

import kopo.poly.dto.MemberDTO;
import kopo.poly.dto.OrderDTO;
import kopo.poly.dto.PaymentDTO;
import kopo.poly.service.IMemberService;
import kopo.poly.util.CmmUtil;
import kopo.poly.util.EncryptUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@Slf4j
@RequestMapping(value = "account")
public class AccountController {
    @Resource(name="MemberService")
    private IMemberService memberService;
    @Resource(name = "OrderService")
    private IOrderService orderService;
    @Resource(name = "PaymentService")
    private IPaymentService paymentService;
    @GetMapping(value="/summary")
    public String summary(HttpSession session, ModelMap modelMap){
        String member_email = CmmUtil.nvl((String)session.getAttribute("member_session"));
        PaymentDTO paymentDTO = paymentService.summary(session);
        OrderDTO orderDTO = orderService.summary(session);
        modelMap.addAttribute("orderDTO", orderDTO);
        modelMap.addAttribute("paymentDTO", paymentDTO);
        return "/account/summary";
    }

    @GetMapping(value="/download")
    public String download(HttpSession session, ModelMap modelMap){
        String member_email = CmmUtil.nvl((String) session.getAttribute("member_session"));
        PaymentDTO paymentDTO = paymentService.download(member_email);
        List<OrderDTO> orderDTOList = orderService.download(member_email);
        if(orderDTOList ==null){
            orderDTOList = new ArrayList<OrderDTO>();
        }
        modelMap.addAttribute("orderDTOList", orderDTOList);
        orderDTOList = null;
        return "/account/download";
    }
    @GetMapping(value = "/details")
    public String details(HttpSession session, ModelMap modelMap){
        String email =(String) session.getAttribute("member_session");
        MemberDTO details = memberService.details(email);
        modelMap.addAttribute("details", details);
        return "/account/details";
    }
    @PostMapping(value= "/details")
    public String details(HttpServletRequest req, ModelMap modelMap){
        String member_name = req.getParameter("member_name");
        String member_email = req.getParameter("member_email");
        MemberDTO memberDTO = new MemberDTO();
        memberDTO.setMember_name(member_name);
        memberDTO.setMember_email(member_email);
        MemberDTO detailsEdit = memberService.detailsEdit(memberDTO);
        modelMap.addAttribute("detailsEdit", detailsEdit);
        return "/account/details";
    }
    @GetMapping(value = "/password_changer")
    public String passwordChanger(){

        return "/account/password_changer";
    }
    @PostMapping(value = "/password_changer")
    public String passwordChanger(HttpServletRequest req, HttpSession session,ModelMap modelMap){
        MemberDTO memberDTO = new MemberDTO();
        String msg = "";
        String member_email = (String) session.getAttribute("member_session");
        String member_password = req.getParameter("member_password");
        String password_changer = req.getParameter("password_changer");
        if(member_email ==null) {
            msg = "유효한 접근이 아닙니다.";
            modelMap.addAttribute("msg", msg);
            return "/main";
        }
        try{
             if(!member_password.equals(memberService.password_equals(member_email))){
                msg = "비밀번호가 틀립니다.";


            }else{
                 memberDTO.setMember_email(member_email);
                 memberDTO.setMember_password(EncryptUtil.encHashSHA256(member_password));
                 memberService.password_changer(memberDTO)
                 msg = "비밀번호가 변경되었습니다.";

             }
        }catch (Exception e){
            msg = "실패했습니다. : " + e.toString();
            log.info(e.toString());
            e.printStackTrace();
        }finally {
            modelMap.addAttribute("msg", msg);
        }

        return "/account/passoword_changer";

    }
    @GetMapping("/seller_request")
    public String sellerRequest(HttpServletRequest req, HttpSession session){
        String member_email = (String) session.getAttribute("member_session");
        return "/account/seller_request";
    }
}
