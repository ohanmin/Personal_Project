package kopo.poly.controller;

import kopo.poly.dto.ProductDTO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
public class HomeController {
    @Resource(name = "ProdctService")
    private IProductService productService;
    @GetMapping(value = "main")
    public String main(ModelMap modelMap){
        List<ProductDTO> productDTOList = productService.main();
        if(productDTOList ==null){
            productDTOList = new ArrayList<>();
        }

        modelMap.addAttribute("productDTOList", productDTOList);
        return "/main";
    }
    @GetMapping(value = "home")
    public String home(){
        return "/home";
    }
}
