package org.example.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Beverage {
    private Long id;
    private String name;
    private String type;
    private double price;
    private int quantity;
}
