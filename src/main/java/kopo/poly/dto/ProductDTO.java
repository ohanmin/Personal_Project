package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;


@Entity
@Table(name="product")


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
    @Column(name="product_price", nullable = false)
    private int product_price;
    @Column(nullable = true)
    private String product_catagory;
    @Column(nullable = true)
    private String product_origin;
    @Column(nullable = true)
    private String product_details;
    @Column(nullable = true)
    private String product_status;
}
