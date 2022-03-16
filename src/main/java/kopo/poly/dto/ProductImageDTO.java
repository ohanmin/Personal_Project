package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

import java.io.File;

@Getter
@Setter
public class ProductImageDTO {
    private int product_no;
    private File product_image;
}
