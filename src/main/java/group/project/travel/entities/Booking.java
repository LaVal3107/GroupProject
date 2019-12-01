package group.project.travel.entities;

import lombok.*;

import javax.persistence.*;

@Getter @Setter @ToString @EqualsAndHashCode(of = "id")
@NoArgsConstructor @AllArgsConstructor

@Entity
@Table(name = "bookings")
public class Booking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @ManyToOne
    private Travel travel;
    @Column(name = "amount_seats")
    private Integer seatsAmount;
    @Column(name = "client_name")
    private String clientName;
    @Column(name = "client_surname")
    private String clientSurname;
    @Column(name = "client_number_tel")
    private String clientPhoneNumber;
    @Column(name = "client_email")
    private String clientEmail;





}
