package pl.cafeina.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.cafeina.dao.CakeDao;
import pl.cafeina.dao.OrderDao;
import pl.cafeina.dao.UserDao;
import pl.cafeina.entity.Cake;
import pl.cafeina.entity.Order;
import pl.cafeina.entity.User;
import pl.cafeina.security.UserPrincipal;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import javax.xml.ws.Response;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    CakeDao cakeDao;
    @Autowired
    UserDao userDao;
    @Autowired
    OrderDao orderDao;

    @ModelAttribute("cakeList")
    public List<Cake> cakesList(){ return cakeDao.findAllByStatus(true);}

    @GetMapping("")
    public String orderForm(@AuthenticationPrincipal UserPrincipal principal, Model model){
        Order order = new Order();

        User user = userDao.findByEmail(principal.getUsername());
        model.addAttribute("userEmail",user.getEmail());
        model.addAttribute("order",order);

        return "order/add_order_form";
    }

    @PostMapping("")
    public String saveOrder(@Valid Order order, BindingResult result, Model model){
        if(result.hasErrors()){
            return "order/add_order_form";
        }
        model.addAttribute("order",order);
        return "order/confirm_order";
    }
}
