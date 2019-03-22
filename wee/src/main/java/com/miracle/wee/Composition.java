package com.miracle.wee;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@NoArgsConstructor
@Table(name = "Compositions")
@Getter
@Setter
public class Composition {
    @Id
    @GeneratedValue
    private long id;

    @OneToOne
    private Product product;
}
