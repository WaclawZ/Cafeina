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

    @ModelAttribute("cakesList")
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
    public String confirmOrder(@Valid Order order, BindingResult result, Model model){
        if(result.hasErrors()){
            return "order/add_order_form";
        }
        order.setStatus(false);
        orderDao.save(order);
        List<Cake> cakes = order.getCakes();
        String sumPrice = summaryPrice(cakes);

        model.addAttribute("sumPrice",sumPrice);
        model.addAttribute("cakes",cakes);
        model.addAttribute("order",order);
        return "order/confirm_order";
    }

    @GetMapping("/confirm/{id}")
    public String saveOrder(@PathVariable Long id){
        Order order = orderDao.findOne(id);
        order.setStatus(true);
        orderDao.save(order);
        return "redirect:/";
    }

    private String summaryPrice(List<Cake> cakes){
        Double first=0.0, second=0.0;
        for(Cake cake : cakes){
            String[] prices = getFullPrice(cake).split("-");
            first += Double.parseDouble(prices[0]);
            second += Double.parseDouble(prices[1]);
        }
        return first + "-" + second+" zł";
    }

    private String getFullPrice(Cake cake){
        String[] ww = cake.getWeigth().split("-");
        Double first = Double.parseDouble(ww[0])*Double.parseDouble(cake.getPricePerKilo());
        Double second = Double.parseDouble(ww[1])*Double.parseDouble(cake.getPricePerKilo());
        String fullPrice = (Math.ceil(first * 100) / 100) + "-" +(Math.ceil(second * 100) / 100);
        return fullPrice;
    }
}
