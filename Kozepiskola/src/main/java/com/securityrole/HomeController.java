package com.securityrole;
import com.kozepiskola.JelentkezesRepo;
import com.kozepiskola.Jelentkezo;
import com.kozepiskola.JelentkezoRepo;
import com.kozepiskola.KepzesRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {
    @Autowired
    private JelentkezoRepo jelentkezoRepo;
    @Autowired
    private JelentkezesRepo jelentkezesRepoRepo;
    @Autowired
    private KepzesRepo kepzesRepo;

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("reg", new User());
        return "index";
    }
    @GetMapping("/home")
    public String user(Model model) {
        return "user";
    }
    @GetMapping("/gallery")
    public String gallery(Model model) {
        return "gallery";
    }
    @GetMapping("/admin/home")
    public String admin() {
        return "admin";
    }

    @GetMapping("/regisztral")
    public String greetingForm(Model model) {
        model.addAttribute("reg", new User());
        return "regisztral";
    }

    @Autowired
    private UserRepository userRepo;
    @PostMapping("/regisztral_feldolgoz")
    public String Regisztráció(@ModelAttribute User user, Model model) {
        for(User felhasznalo2: userRepo.findAll())
            if(felhasznalo2.getEmail().equals(user.getEmail())){
                model.addAttribute("uzenet", "A regisztrációs email már foglalt!");
                return "reghiba";
            }
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        Role role = new Role();
        role.setId(3); role.setName("ROLE_USER");
        List<Role> rolelist = new ArrayList<Role>();
        rolelist.add(role);
        user.setRoles(rolelist);
        userRepo.save(user);
        model.addAttribute("id", user.getId());
        return "regjo";
    }

    @GetMapping("/kozepiskola")
    public String kozepiskola(Model model) {

        List<String[]> rowListData;

        for(Jelentkezo jelentkezo : jelentkezoRepo.findAll()) {

        }

        return "haromtablabol";
    }
}
