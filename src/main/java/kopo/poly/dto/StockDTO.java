package kopo.poly.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter

public class StockDTO {
    private int product_no, stock_quantity, stock_monthly_purchases;
    private String stock_status;
}
