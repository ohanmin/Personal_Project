package kopo.poly.repo;

import kopo.poly.dto.ProductDTO;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
@WebAppConfiguration
@SpringBootTest
@TestPropertySource(locations="classpath:application-test.properties")
class ProductRepoTest {
    @Autowired
    ProductRepo productRepo;

    public void createProductList(){
        for(int i =1;i<=10;i++){
            ProductDTO productDTO = new ProductDTO();
            productDTO.setProduct_name("테스트 상품 " + i);
            productDTO.setProduct_price(10000 + i);
            productDTO.setProduct_details("테스트 상품 상세 설명" + i);
            productDTO.setProduct_catagory("ㅇㅇ");
            productDTO.setProduct_status("재고 없음");
            productDTO.setProduct_origin("국산");
            ProductDTO savedProduct = productRepo.save(productDTO);
        }
    }
    @Test
    @DisplayName("상품명 조회 테스트")
    public void findByProductNmTest(){
        this.createProductList();
        List<ProductDTO> productDTOList = productRepo.findByProductNm("테스트 상품 1");
        for(ProductDTO productDTO : productDTOList){
            System.out.println(productDTO.toString());
        }
    }
}