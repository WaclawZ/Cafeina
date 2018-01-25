package pl.cafeina.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.cafeina.entity.Order;

import java.util.List;

public interface OrderDao extends JpaRepository<Order, Long> {

}
