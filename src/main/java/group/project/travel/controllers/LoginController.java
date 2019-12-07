package group.project.travel.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping
public class LoginController {

    @GetMapping("/login")
    public String prepareLoginPage() {
        return "/WEB-INF/views/loginPage.jsp";
    }

    @PostMapping("/logout")
    public String logout(HttpServletRequest request) throws ServletException {
           request.logout();
           return "redirect:/home";
    }
}
