package com.web.gradebook;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@NoArgsConstructor
@Table(name = "Subjects")
@Getter
@Setter
public class Subject {

    @Id
    @GeneratedValue
    private long id;

    private String subjName;

    @OneToMany(mappedBy = "subject", cascade = CascadeType.ALL)
    private List<Mark> marks = new ArrayList<Mark>();

    public Subject(String subjName) {
        this.subjName = subjName;
    }
}
