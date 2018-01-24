package pl.cafeina.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.cafeina.dao.CakeDao;
import pl.cafeina.entity.Cake;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/cake")
public class CakeController {

    @Autowired
    CakeDao cakeDao;

    @GetMapping("")
    public String showCakes(Model model){
        List<Cake> cakes = new ArrayList<>();
        cakes = cakeDao.findAllByStatus(true);

        model.addAttribute("cakes",cakes);
        return "cakes/show_all_cakes";
    }

    @GetMapping("/add")
    public String cakeForm(Model model){
        Cake cake = new Cake();

        model.addAttribute("cake",cake);
        return "cakes/add_cake_form";
    }

    @PostMapping("/add")
    public String addCake(@Valid Cake cake, BindingResult result){
        if(result.hasErrors()){
            return "cakes/add_cake_form";
        }
        System.out.println(cake.getDescription());
        cakeDao.save(cake);
        return "redirect:/cake";
    }

    @GetMapping("/{id}")
    public String cakeDetails(@PathVariable Long id, Model model){
        Cake cake = cakeDao.findOne(id);

        String fullPrice = getFullPrice(cake);

        model.addAttribute("fullPrice", fullPrice);
        model.addAttribute("cake", cake);
        return "cakes/show_one_cake";
    }

    private String getFullPrice(Cake cake){
        String[] ww = cake.getWeigth().split("-");
        Double first = Double.parseDouble(ww[0])*Double.parseDouble(cake.getPricePerKilo());
        Double second = Double.parseDouble(ww[1])*Double.parseDouble(cake.getPricePerKilo());
        String fullPrice = (Math.ceil(first * 100) / 100) + "-" +(Math.ceil(second * 100) / 100)+" zł";
        return fullPrice;
    }

}
