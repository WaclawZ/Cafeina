package pl.cafeina.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
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
        cakes = cakeDao.findAll();

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
        cakeDao.save(cake);
        return "cakes/show_all";
    }

}
