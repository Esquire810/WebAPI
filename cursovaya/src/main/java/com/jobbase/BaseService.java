package com.jobbase;

import com.jobbase.model.SignUp;
import com.jobbase.model.repository.SignUpRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BaseService {
    @Autowired
    private SignUpRepository signUpRepository;

    //SignUp
    @Transactional
    public void createUser(SignUp signUp){signUpRepository.save(signUp);}
}
