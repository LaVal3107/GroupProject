package group.project.travel.controllers;

import group.project.travel.entities.Travel;
import group.project.travel.repositories.TravelRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/show")
public class ShowTravelController {

  private final TravelRepository travelRepository;

  public ShowTravelController(TravelRepository travelRepository){
      this.travelRepository = travelRepository;
  }

  @GetMapping
    public String prepareShowTravel(Model model){
      List<Travel> allTravels = travelRepository.findAll();
      model.addAttribute("travels", allTravels);
      return "/WEB-INF/views/show.jsp";
  }

}
