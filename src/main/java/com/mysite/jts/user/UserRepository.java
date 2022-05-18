package com.mysite.jts.user;

import org.springframework.data.jpa.repository.JpaRepository;

//SiteUser의 PK타입이 Long
public interface UserRepository extends JpaRepository<SiteUser, Long> {
}
