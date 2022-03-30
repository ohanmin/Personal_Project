package kopo.poly.repo;

import kopo.poly.dto.ProductDTO;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepo extends JpaRepository<ProductDTO, Integer> {
    List<ProductDTO> findByProductNm(String productNm);
}
