package com.mysite.jts.user;

import com.mysite.jts.DataNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@RequiredArgsConstructor
@Service
public class UserService {

    private final UserRepository userRepository;

    // 객체를 직접 생성하지 않고 Bean으로 등록한 PasswordEncoder 객체를 주입받아 사용
    private final PasswordEncoder passwordEncoder;

    public SiteUser create(String username, String email, String password) {
        SiteUser user = new SiteUser();
        user.setUsername(username);
        user.setEmail(email);
        //비밀번호는 암호화 저장을 위해 시큐리티의 BCryptPasswordEncoder를 사용

        //이렇게 new를 만들어서 생성하면 비효율이기 떄문에
        //Bean을 만들어거 가져다 쓰는 방법으로 바꾸자
//        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

        user.setPassword(passwordEncoder.encode(password));
        this.userRepository.save(user);
        return user;
    }

    public SiteUser getUser(String username) {
        Optional<SiteUser> siteUser = this.userRepository.findByUsername(username);

        if (siteUser.isPresent()) {
            return siteUser.get();
        } else {
            throw new DataNotFoundException("siteuser not found");
        }
    }


}
