package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberDTO {
    private int member_no;
    private String member_id, member_password, member_phone, member_email;
    private String member_birth, member_create, member_modify, member_auth;
}
