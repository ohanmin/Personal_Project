package kopo.poly.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class MemberDTO {
    private int member_no;
    private String member_password, member_email, member_name;
    private String member_create, member_modify, member_auth;
}
