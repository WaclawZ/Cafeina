package pl.cafeina.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.cafeina.entity.User;

import java.util.List;

public interface UserDao extends JpaRepository<User, Long> {


}
