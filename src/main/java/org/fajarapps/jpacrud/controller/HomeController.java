package org.fajarapps.jpacrud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Controller untuk menampilkan halaman utama.
 *
 * @author Ahmad Fajar
 * @since 27/08/2015, modified: 27/08/2015 12:35
 */
@Controller
@RequestMapping(value = "/")
public class HomeController
{
    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("pageTitle", "Welcome to JPA-Crud Project");

        return "index";
    }
}
