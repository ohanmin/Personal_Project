package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewDTO {
    private int review_no;
    private String review_title, review_detail, review_date;
    private int review_scope, member_no, order_no, product_no;
}
