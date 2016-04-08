/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.controller;

import com.company.tucurso.entity.Category;
import com.company.tucurso.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author fede
 */
@Controller
@RequestMapping("/category")
public class CategoryController {

    @Autowired(required = true)
    CategoryService categoryService;

    @RequestMapping(value = "/addCategory", method = RequestMethod.GET)
    public String addCategory() {
        return "addCategory";
    }

    @RequestMapping(value = "/addCategory", method = RequestMethod.POST)
    public String addCategoryPost(@ModelAttribute(value = "Category") Category category) {

        categoryService.add(category);
        return "redirect:/course/addCourse";
    }

}
