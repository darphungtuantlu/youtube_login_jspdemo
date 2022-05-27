package com.uranus.logindemo;


import static org.assertj.core.api.Assertions.assertThat;

import org.assertj.core.api.Assert;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.annotation.Rollback;

import com.uranus.logindemo.model.User;
import com.uranus.logindemo.repository.UserRepo;

@DataJpaTest
@AutoConfigureTestDatabase(replace = Replace.NONE)
@Rollback(value = false)
public class UserRepoTests {
    @Autowired
    private UserRepo repo;

    @Autowired
    private TestEntityManager entityManager;

    @Test
    public void testCreateUser(){
        User user = new User();
        user.setEmail("kinguranus@gmail.com");
        user.setPassword("dattuanzzj123");
        user.setFirstName("Dat");
        user.setLastName("Phung Duc");

        User savedUser = repo.save(user);

        User existUser = entityManager.find(User.class, savedUser.getId());
        
        assertThat(existUser.getEmail()).isEqualTo(user.getEmail());
        
    }
}
