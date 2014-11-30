/*
 * Copyright (c) 2014 com.company.mobile
 */

package com.company.mobile.portal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Александр on 29.11.2014.
 */
@Controller
public class MobileController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String mobile(Model model) {

        return "mobile";
    }

}
