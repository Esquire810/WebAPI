package com.miracle.wee;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@NoArgsConstructor
@Table(name = "Image")
@Getter
@Setter
public class Img {
    @Id
    @GeneratedValue
    private long id;

    private String url;

    public Img(String url) {
        this.url = url;
    }
}
