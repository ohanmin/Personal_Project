package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;


@Entity
@Table


@Getter
@Setter
@ToString
public class ProductDTO {
    @Id
    @Column(name="product_no")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int product_no;
    @Column(nullable = false, length = 50)
    private String product_name;
    private int product_price;
    private String product_catagory, product_origin,
    product_details, product_status;
}
