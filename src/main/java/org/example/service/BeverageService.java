package org.example.service;

import lombok.AllArgsConstructor;
import org.example.db.DataBaseConnectionFactory;
import org.example.entity.Beverage;

import java.util.List;

@AllArgsConstructor
public class BeverageService {
    private final DataBaseConnectionFactory dataBaseConnectionFactory;

    //Task 2: Implement the methods to get all beverages using dataBaseConnectionFactory
    public List<Beverage> getAllBeverage() {
        return null;
    }

    public Beverage createBeverage(Beverage beverage) {
        return null;
    }



}
