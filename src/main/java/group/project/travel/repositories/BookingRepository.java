package group.project.travel.repositories;

import group.project.travel.entities.Booking;
import group.project.travel.entities.Travel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookingRepository extends JpaRepository<Booking, Long> {
}
