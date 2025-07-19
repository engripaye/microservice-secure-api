package org.engripaye.orderservice.order;

import jakarta.validation.Valid;
import org.engripaye.orderservice.model.Order;
import org.engripaye.orderservice.repository.OrderRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController

@RequestMapping
        ("/api/orders")
public class OrderController {
    private final OrderRepository orderRepository;

    public OrderController(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }


    @PostMapping

    public ResponseEntity<Order> createOrder(
            @Valid

            @RequestBody
            Order order) {
        order.setId(UUID.randomUUID().toString());
        order.setUsername(SecurityContextHolder.getContext().getAuthentication().getName());
        http://orderRepository.save(order);
        return ResponseEntity.ok(order);
    }


    @GetMapping

    public ResponseEntity<List<Order>> getOrders() {
        return ResponseEntity.ok(orderRepository.findAll());
    }
}