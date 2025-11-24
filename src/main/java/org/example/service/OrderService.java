package org.example.service;

import lombok.AllArgsConstructor;
import org.example.db.DataBaseConnectionFactory;
import org.example.entity.Order;
import org.example.entity.User;

import java.util.List;

@AllArgsConstructor
public class OrderService {
    private final DataBaseConnectionFactory dataBaseConnectionFactory;

    public List<Order> getAllOrders() {
        var connection = dataBaseConnectionFactory.getConnection();
        return List.of(); // Placeholder return
    }

    public void getUserOrders(User johnDoe) {

    }
}
