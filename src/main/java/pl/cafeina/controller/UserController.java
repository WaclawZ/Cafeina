package pl.cafeina.controller;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.cafeina.dao.UserDao;
import pl.cafeina.entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserDao userDao;

    @GetMapping("")
    public String checkUser(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(user == null){
            return "redirect:user/login";
        }

        return "user/logged";
    }

    @GetMapping("/login")
    public String login(){
        return "user/login_user_form";
    }

    @GetMapping("/register")
    public String register(Model model){
        User user = new User();

        model.addAttribute("user",user);
        return "user/add_user_form";
    }

    @PostMapping("/register")
    public String register(@Valid User user, BindingResult result, HttpServletRequest request){
        if(result.hasErrors()){
            return "user/add_user_form";
        }

        String hashedPass = BCrypt.hashpw(user.getPassword(),BCrypt.gensalt());
        user.setPassword(hashedPass);
        user.setAdmin(false);
        userDao.save(user);

        HttpSession session = request.getSession();
        session.setAttribute("user",user);

        return "redirect:/";
    }
}
