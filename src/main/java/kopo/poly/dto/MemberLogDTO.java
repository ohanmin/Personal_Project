package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberLogDTO {
    private int member_no;
    private String login_date, login_status, login_type;
}
