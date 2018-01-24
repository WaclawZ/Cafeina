package pl.cafeina.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.cafeina.entity.Cake;

import java.util.List;

public interface CakeDao extends JpaRepository<Cake, Long> {

    List<Cake> findAllByStatus(boolean status);
}
