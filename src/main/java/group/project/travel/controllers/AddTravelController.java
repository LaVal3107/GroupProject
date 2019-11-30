package group.project.travel.controllers;

import group.project.travel.entities.Travel;
import group.project.travel.repositories.TravelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;

@Controller
@RequestMapping("/add")
public class AddTravelController {

    private final TravelRepository travelRepository;

    @Autowired
    public AddTravelController(TravelRepository travelRepository) {
        this.travelRepository = travelRepository;
    }

    @GetMapping
    public String preparepAddTravel() {
        return "/WEB-INF/views/add.jsp";
    }

    @PostMapping
    public String procesAddTravel(String name,
                                  String departure,
                                  String destination,
                                  @DateTimeFormat(pattern = "yyyy-MM-dd")
                                              LocalDate beginDate,
                                  @DateTimeFormat(pattern = "yyyy-MM-dd")
                                              LocalDate endDate,
                                  Integer days,
                                  Double price,
                                  Integer availableSeats) {

        Travel travel = new Travel();
        travel.setName(name);
        travel.setDeparture(departure);
        travel.setDestination(destination);
        travel.setBeginDate(beginDate);
        travel.setEndDate(endDate);
        travel.setDays(days);
        travel.setPrice(price);
        travel.setAvailableSeats(availableSeats);
        travel.setReservedSeats(0);

        travelRepository.save(travel);
        return "redirect:/add";

    }
}
