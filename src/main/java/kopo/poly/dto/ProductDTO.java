package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;


@Getter
@Setter
@ToString
public class ProductDTO {


    private String product_name;

    private int product_price;

    private String product_catagory;

    private String product_origin;

    private String product_details;

    private String product_status;
}
