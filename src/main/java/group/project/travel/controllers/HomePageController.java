package group.project.travel.controllers;

import group.project.travel.entities.Travel;
import group.project.travel.repositories.BookingRepository;
import group.project.travel.repositories.TravelRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.util.List;

@Controller
@RequestMapping("/")
public class HomePageController {

    private final BookingRepository bookingRepository;
    private final TravelRepository travelRepository;

    public HomePageController(BookingRepository bookingRepository, TravelRepository travelRepository) {
        this.bookingRepository = bookingRepository;
        this.travelRepository = travelRepository;
    }

    @GetMapping
    public String prepareHomePage(Model model) {
        List<Travel> actualTravels = travelRepository.findAllByBeginDateAfterOrderByBeginDate(LocalDate.now());
        model.addAttribute("actualTravels", actualTravels);
        return "/WEB-INF/views/homePage.jsp";

    }
}
