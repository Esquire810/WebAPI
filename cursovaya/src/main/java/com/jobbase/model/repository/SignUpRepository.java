package com.jobbase.model.repository;

import com.jobbase.model.SignUp;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SignUpRepository extends JpaRepository<SignUp, Long> {
}
