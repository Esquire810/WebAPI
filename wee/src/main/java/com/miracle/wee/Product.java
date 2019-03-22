package com.miracle.wee;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@NoArgsConstructor
@Table(name = "Products")
@Getter
@Setter
public class Product {
    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid")
    @Column(name = "uuid", unique = true)
    private String uuid;

    private String prod_name;
    private int price;
    private String product_describe;
    private int height;
    private int width;
    private String color;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "img_id")
    private Img img;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "group_id")
    private Group group;


    public Product(String prod_name, int price, String product_describe, int height, int width, String color, Group group, Img img) {
        this.prod_name = prod_name;
        this.price = price;
        this.product_describe = product_describe;
        this.height = height;
        this.width = width;
        this.color = color;
        this.group = group;
        this.img = img;
    }
}
