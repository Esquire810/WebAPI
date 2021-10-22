package com.web.gradebook;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@NoArgsConstructor
@Table(name = "Groups")
@Getter
@Setter
public class Group {
    @Id
    @GeneratedValue
    private long id;

    private String name;

    @OneToMany(mappedBy = "group", cascade = CascadeType.ALL)
    private List<Student> students = new ArrayList<Student>();

    public Group(String name) {
        this.name = name;
    }
}
