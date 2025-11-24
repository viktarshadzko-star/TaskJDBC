package org.example;

import org.example.db.DataBaseConnectionFactory;
import org.example.entity.Beverage;
import org.example.entity.User;
import org.example.service.BeverageService;
import org.example.service.OrderService;
import org.example.service.UserService;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    static void main() {
        DataBaseConnectionFactory dataBaseConnectionFactory = new DataBaseConnectionFactory();
        OrderService orderService = new OrderService(dataBaseConnectionFactory);
        UserService userService = new UserService(dataBaseConnectionFactory);
        BeverageService beverageService = new BeverageService(dataBaseConnectionFactory);

        beverageService.getAllBeverage();
        Beverage soda = new Beverage(null, "Coca-Cola", "Soda", 1.5, 100);
        Beverage sangria = new Beverage(null, "Sangria", "Alcoholic Drink", 3.0, 250);

        beverageService.createBeverage(soda);
        beverageService.createBeverage(sangria);

        User johnDoe = userService.getUserByUsername("john_doe");
        orderService.getAllOrders();
        orderService.getUserOrders(johnDoe);

    }
    //Lord Of The Rings better than Harry Potter
}
