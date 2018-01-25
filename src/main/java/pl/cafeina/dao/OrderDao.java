package pl.cafeina.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.cafeina.entity.Order;

public interface OrderDao extends JpaRepository<Order, Long> {

}
