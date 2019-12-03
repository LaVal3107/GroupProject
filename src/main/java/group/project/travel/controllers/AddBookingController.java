package group.project.travel.controllers;

import group.project.travel.entities.Booking;
import group.project.travel.entities.Travel;
import group.project.travel.repositories.BookingRepository;
import group.project.travel.repositories.TravelRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/booking/add")
public class AddBookingController {

    private final BookingRepository bookingRepository;
    private final TravelRepository travelRepository;

    public AddBookingController(BookingRepository bookingRepository, TravelRepository travelRepository) {
        this.bookingRepository = bookingRepository;
        this.travelRepository = travelRepository;
    }

    @GetMapping
    public String prepareShowTravel(Model model) {
        List<Travel> allTravels = travelRepository.findAll();
        model.addAttribute("travels", allTravels);
        model.addAttribute("selectedTravelId", allTravels.get(0).getId());
        model.addAttribute("availableSeats", allTravels.get(0).getAvailableSeats());
        return "/WEB-INF/views/addBooking.jsp";
    }

    @PostMapping
    public String procesBookingChangeTravel(Long travelId, Model model) {
        List<Travel> allTravels = travelRepository.findAll();
        model.addAttribute("travels", allTravels);
        Travel selectedTravel = travelRepository.getOne(travelId);
        model.addAttribute("selectedTravelId", selectedTravel.getId());
        model.addAttribute("availableSeats", selectedTravel.getAvailableSeats());
        return "/WEB-INF/views/addBooking.jsp";
    }

    @PostMapping(params = "reserved")
    public String procesBooking(Long travelId,
                                Integer seatsAmount,
                                String clientName,
                                String clientSurname,
                                String clientPhoneNumber,
                                String clientEmail) {

        Booking booking = new Booking();
        Travel travel = travelRepository.getOne(travelId);
        booking.setTravel(travel);
        booking.setSeatsAmount(seatsAmount);
        travel.setReservedSeats(travel.getReservedSeats() + seatsAmount);
        travel.setAvailableSeats(travel.getAvailableSeats() - seatsAmount);
        booking.setClientName(clientName);
        booking.setClientSurname(clientSurname);
        booking.setClientPhoneNumber(clientPhoneNumber);
        booking.setClientEmail(clientEmail);

        travelRepository.save(travel);
        bookingRepository.save(booking);
        return "redirect:/booking/add";

    }
}
