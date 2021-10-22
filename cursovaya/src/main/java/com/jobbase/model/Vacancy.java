package com.jobbase.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Currency;
import java.util.Date;

@Entity
@NoArgsConstructor
@Table(name = "Vacancy")
@Getter
@Setter
public class Vacancy {

    @Id
    @GeneratedValue
    private long vacancyId;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "userId")
    private User user;

    private String vacancy;
    private Date creationDate;
    private Currency salary;
    private String vacancyText;
    private float experience;


    public Vacancy(User user, String vacancy, Date creationDate, Currency salary, String vacancyText, float experience) {
        this.user = user;
        this.vacancy = vacancy;
        this.creationDate = creationDate;
        this.salary = salary;
        this.vacancyText = vacancyText;
        this.experience = experience;
    }
}
