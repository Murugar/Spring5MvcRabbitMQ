package com.iqmsoft.springrabbitmq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.iqmsoft.springrabbitmq.service.ProducerService;


@Controller
public class IndexController {

    @Autowired
    private ProducerService producerService;

    @RequestMapping("/")
    public String index() {
        return "index";
    }

   
    @RequestMapping(value = "/sendMessage", method = RequestMethod.POST)
    public String sendMessage(@ModelAttribute("message")String message, 
    	      BindingResult result, ModelMap model) {
    	
    	if (result.hasErrors()) {
            return "error";
        }
        model.addAttribute("name", "This is a test");
        
    	
        producerService.produceMessage("This is a test");
        return "result";
    }
}
