package pl.cafeina.controller;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.cafeina.dao.UserDao;
import pl.cafeina.entity.User;
import pl.cafeina.security.UserPrincipal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserDao userDao;
    @Autowired
    PasswordEncoder encoder;

    @GetMapping("")
    public String checkUser(@AuthenticationPrincipal UserPrincipal principal){
        if(principal == null){
            return "redirect:user/login";
        }

        return "redirect:/user/logged";
    }

    @GetMapping("/login")
    public String login(){
        return "user/login_user_form";
    }

    @GetMapping("/logged")
    public String profile(@AuthenticationPrincipal UserPrincipal principal, Model model){
        User user = userDao.findByEmail(principal.getUsername());

        model.addAttribute("user",user);
        return "user/logged";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/user";
    }

    @GetMapping("/register")
    public String register(Model model){
        User user = new User();

        model.addAttribute("user",user);
        return "user/add_user_form";
    }

    @PostMapping("/register")
    public String register(@Valid User user, BindingResult result){
        if(result.hasErrors()){
            return "user/add_user_form";
        }

        user.setPassword(encoder.encode(user.getPassword()));
        user.setAdmin(false);
        userDao.save(user);

        return "redirect:/user";
    }
}
