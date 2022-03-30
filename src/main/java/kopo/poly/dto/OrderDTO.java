package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class OrderDTO {
    private int order_no;
    private String order_date;
    private int order_total, order_delivery;
    private String order_status;
    private int member_no;
}
