package kopo.poly.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import kopo.poly.dto.ProductDTO;
import kopo.poly.util.CmmUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Slf4j
@Controller
@RequestMapping(value = "main")
public class MainController {
    @Resource(name = "ProductService")
    private IProductService productService;
    @GetMapping(value = "/category")
    public String catagory(ModelMap modelMap){
        List<ProductDTO> productDTOList = productService.category();
        return "/main/category";
    }

    @PostMapping(value = "/search")
    public String search(HttpServletRequest req, ModelMap modelMap){
        String search = req.getParameter("search");
        List<ProductDTO> productDTOList = productService.search(search);
        modelMap.addAttribute("search", search);
        return "/main/search";
    }
    @GetMapping(value = "/product")
    public String product(HttpServletRequest req, ModelMap modelMap){
        int product_no = Integer.parseInt(CmmUtil.nvl(req.getParameter("product_no")));
        log.info("product_no : " + product_no);

        ProductDTO product = productService.product(product_no);
        if(product ==null){
            product = new ProductDTO();
        }
        modelMap.addAttribute("product", product);
        product=null;
        return "/main/product";
    }

    @GetMapping(value = "/payments")
    public String payments(){
        return "/main/payments";

    }
    @PostMapping(value = "/payments")
    public String payments(HttpServletRequest req){
        return  "";
    }
}
