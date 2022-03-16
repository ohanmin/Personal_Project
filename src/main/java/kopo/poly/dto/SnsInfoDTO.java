package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SnsInfoDTO {
    private int member_no;
    private String sns_id, sns_type, sns_name, sns_profile, sns_connect_date;
}
