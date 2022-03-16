package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductDTO {
    private int product_no, product_price;
    private String product_name, product_catagory, product_origin,
    product_details, product_status;
}
