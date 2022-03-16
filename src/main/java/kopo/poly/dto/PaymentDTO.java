package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PaymentDTO {
    private int payment_no;
    private String payment_method, payment_date;
    private int payment_total, payment_extra, order_no;
}
