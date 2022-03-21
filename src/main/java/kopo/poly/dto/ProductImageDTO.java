package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.File;

@Entity
@Table(name="product_image")
@Getter
@Setter

public class ProductImageDTO {
    @Id
    @Column(name="product_no")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int product_no;
    @Lob
    @Column(nullable = true)
    private File product_image;
}
