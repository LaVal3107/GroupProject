package group.project.travel.controllers;

import group.project.travel.entities.Booking;
import group.project.travel.repositories.BookingRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/bookings")
public class ShowBookingController {

    private final BookingRepository bookingRepository;

    public ShowBookingController(BookingRepository bookingRepository) {
        this.bookingRepository = bookingRepository;
    }

    @GetMapping
    public String prepareShowBooking(Model model){
        List<Booking> allBookings = bookingRepository.findAll();
        model.addAttribute("bookings", allBookings);
        return "/WEB-INF/views/showBookings.jsp";
    }

}
