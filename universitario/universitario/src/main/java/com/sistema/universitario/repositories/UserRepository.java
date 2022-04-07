package com.sistema.universitario.repositories;

import com.sistema.universitario.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
    public User save(User usuario);
}
