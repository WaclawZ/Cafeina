package pl.cafeina.entity;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;

@Entity
@Table(name = "cakes")
public class Cake {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    private String name;

    @NotEmpty
    private String type;

    @NotEmpty
    private String weigth;

    @NotEmpty
    @Column(name = "price")
    private Double pricePerKilo;
}
