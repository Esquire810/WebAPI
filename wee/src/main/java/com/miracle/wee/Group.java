package com.miracle.wee;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

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
    private long uuid;

    private String name;

    @OneToOne
    @JoinColumn(name = "img_url")
    private Img img;

    @OneToMany(mappedBy = "group", cascade = CascadeType.ALL)
    private List<Product> products = new ArrayList<Product>();

    public Group(String name, Img img) {
        this.name = name;
        this.img = img;
    }

    public Group(String name) {
        this.name = name;
    }
}
