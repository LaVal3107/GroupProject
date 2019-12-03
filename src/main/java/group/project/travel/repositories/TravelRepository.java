package group.project.travel.repositories;

import group.project.travel.entities.Travel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDate;
import java.util.List;


public interface TravelRepository extends JpaRepository<Travel, Long> {

    List<Travel> findAllByBeginDateAfterOrderByBeginDate(LocalDate beginDate);
}
