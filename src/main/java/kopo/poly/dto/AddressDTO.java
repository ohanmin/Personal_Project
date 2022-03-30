package kopo.poly.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class AddressDTO {
    private int member_no;
    private String address_name, address_receiver, address_phone, address_zipcode,
    address_basic, address_detail;
}
