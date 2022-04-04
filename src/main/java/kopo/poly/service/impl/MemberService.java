package kopo.poly.service.impl;

import kopo.poly.dto.MemberDTO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Slf4j
@RequiredArgsConstructor
@Service("MemberService")
public class MemberService{
    private final PasswordEncoder passwordEncoder;
    //사용자가 입력한 identifier을 통해 디비에 저장된 유저 객체를 가져와서 User
    public void memberJoin(MemberDTO memberDTO){
        memberDTO.setMember_password(passwordEncoder.encode(memberDTO.getMember_password()));
    }
}
