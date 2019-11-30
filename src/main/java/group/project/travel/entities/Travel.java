package group.project.travel.entities;


import lombok.*;

import javax.persistence.*;
import java.time.LocalDate;

@Getter @Setter @ToString @EqualsAndHashCode(of = "id")
@NoArgsConstructor @AllArgsConstructor

@Entity
@Table(name = "travels")
public class Travel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "departure")
    private String departure;
    @Column(name = "destination")
    private String destination;
    @Column(name = "begin_date")
    private LocalDate beginDate;
    @Column(name = "end_date")
    private LocalDate endDate;
    @Column(name = "days")
    private Integer days;
    @Column(name = "price")
    private Double price;
    @Column(name = "available_seats")
    private Integer availableSeats;
    @Column(name = "reserved_seats")
    private Integer reservedSeats;

}
