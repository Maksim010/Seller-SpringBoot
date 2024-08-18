package com.example.seller.repositories;

import com.example.seller.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface ProductRepository extends JpaRepository<Product,Long> {


     Product findByid(Long id) ;

    List<Product> findByTitle(String title);

}
