package com.sami.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sami.model.Act;

@Repository
public interface ActRepository extends JpaRepository<Act, Integer> {
}
