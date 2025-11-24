package org.example.service;


import lombok.AllArgsConstructor;
import org.example.db.DataBaseConnectionFactory;
import org.example.entity.User;

@AllArgsConstructor
public class UserService {
    private final DataBaseConnectionFactory dataBaseConnectionFactory;

    public User getUserById(Long id) {
         dataBaseConnectionFactory.getConnection();
         return null;
    }

    public User getUserByUsername(String username) {
        return null;
    }



}
