package com.jobbase.model;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@NoArgsConstructor
@Table(name = "User")
@Getter
@Setter
public class User {

    @Id
    @GeneratedValue
    private long id;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "singUpId")
    private SignUp signUp;
    private Date birthday;
    private String city;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Resume> resume = new ArrayList<Resume>();

    public User(SignUp signUp, Date birthday, String city) {
        this.signUp = signUp;
        this.birthday = birthday;
        this.city = city;
    }
}
