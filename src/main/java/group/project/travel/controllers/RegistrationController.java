package group.project.travel.controllers;

import group.project.travel.entities.User;
import group.project.travel.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;

@Controller
@RequestMapping("/register")
public class RegistrationController {

    private final UserRepository userRepository;

  //  private static final Logger log = LoggerFactory.getLogger(RegistrationController.java);

    @Autowired
    public RegistrationController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping
    public String preparepRegistrationPage() {
        return "/WEB-INF/views/registration.jsp";
    }


    @PostMapping
    public String processRegistrationPage(String username,
                                          String password,
                                          String firstName,
                                          String lastName) {
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setActive(true);

        userRepository.save(user);
        return "/";

       // log.info("Zapisany użytkownik: "+  user);
        // return "redirect:/index.html";

    }
}
