package ru.netology.dao.controller;

import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.dao.repository.ProductName;

import java.util.List;

@RestController
@RequestMapping("/products")

public class ProductNameController {
    private ProductName repository;

    public ProductNameController(ProductName repository) {
        this.repository = repository;
    }

    @GetMapping("/fetch-product")
    public List<String> getProductName(@RequestParam("name") @Validated String customerName) {
        return repository.getProductName(customerName);
    }
}
