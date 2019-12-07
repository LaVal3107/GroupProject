package group.project.travel.controllers;


import group.project.travel.entities.Booking;
import group.project.travel.repositories.BookingRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/bookings/delete")
public class DeleteBookingController {

    private final BookingRepository bookingRepository;

    public DeleteBookingController(BookingRepository bookingRepository) {
        this.bookingRepository = bookingRepository;
    }

    @GetMapping
    public String prepareShowBooking(Long id) {
        bookingRepository.deleteById(id);
        return "redirect:/bookings";
    }

}
