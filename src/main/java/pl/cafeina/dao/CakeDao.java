package pl.cafeina.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.cafeina.entity.Cake;

public interface CakeDao extends JpaRepository<Cake, Long> {


}
