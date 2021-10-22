package com.web.gradebook;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@NoArgsConstructor
@Table(name = "Marks")
@Getter
@Setter
public class Mark {
    @Id
    @GeneratedValue
    private long id;

    private String date;
    private int mark;

    @ManyToOne
    @JoinColumn(name = "subj_id")
    private Subject subject;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "student_id")
    private Student student;

    public Mark(String date, int mark, Subject subject, Student student) {
        this.date = date;
        this.mark = mark;
        this.subject = subject;
        this.student = student;
    }
}
