package com.miracle.wee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;


@Controller
public class WmController {
    @Autowired
    private WmService wmService;

    @RequestMapping("/")
    public String getIndex(Model model){
        model.addAttribute("groups", wmService.findGroups());
        return "index";
    }

    @RequestMapping("/product_add_page")
    public String productAddPage(Model model){
        model.addAttribute("groups", wmService.findGroups());
        model.addAttribute("image", wmService.findImg());
        return "product_add_page";
    }

    @RequestMapping(value = "/product_add", method = RequestMethod.POST)
    public String productAdd(@RequestParam String prod_name,
                             @RequestParam int price,
                             @RequestParam String product_describe,
                             @RequestParam int height,
                             @RequestParam int width,
                             @RequestParam String color,
                             Group group, Img img)
    {
        wmService.addProduct(new Product(prod_name, price, product_describe, height, width, color, group, img));
        return "redirect:/";
    }

    @RequestMapping("/group_add_page")
    public String groupAddPage(Model model){
        model.addAttribute("image", wmService.findImg());
        model.addAttribute("groups", wmService.findGroups());
        return "group_add_page";
    }

    @RequestMapping(value = "/group/add", method = RequestMethod.POST)
    public String groupAdd(@RequestParam String name, Img img){
        wmService.addGroup(new Group(name, img));
        return "redirect:/";
    }

    @RequestMapping(value = "/group/delete", method = RequestMethod.POST)
    public String groupDelete(@RequestParam(value = "deleteGroup")Group group){
        wmService.deleteGroup(group);
        return "redirect:/";
    }

    @RequestMapping("/img_add_page")
    public String imgAddPage(){
        return "img_add_page";
    }

    @RequestMapping(value = "/img/add", method = RequestMethod.POST)
    public String imgAdd(@RequestParam String url){
        wmService.addImg(new Img(url));
        return "redirect:/";
    }

    @RequestMapping("/contact_page")
    public String contact(Model model){
        model.addAttribute("groups", wmService.findGroups());
        return "contactPage";
    }

    @RequestMapping("/about_us")
    public String about(Model model){
        model.addAttribute("groups", wmService.findGroups());
        return "aboutUs";
    }

    @RequestMapping("/group/{uuid}")
    public String listProduct(Model model){
        model.addAttribute("groups", wmService.findGroups());
        return "product_list";
    }
}
