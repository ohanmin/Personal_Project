package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

import java.io.File;

@Getter
@Setter
public class ReviewImageDTO {
    private int review_no;
    private File review_image;
}
