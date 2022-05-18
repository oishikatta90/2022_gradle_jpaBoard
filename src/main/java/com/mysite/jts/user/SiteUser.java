package com.mysite.jts.user;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
public class SiteUser {
    // 스프링 시큐리티에 User라는 클래스가 있기 때문에
    // SiteUser라고 지음
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    //unique = true는 유일한 값만 저장할 수 있음. 즉 동일값X
    @Column(unique = true)
    private String username;

    private String password;

    @Column(unique = true)
    private String email;
}
