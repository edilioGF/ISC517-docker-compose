package com.pucmm.docker.Repositories;

import com.pucmm.docker.Entities.Form;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface FormsRepository extends JpaRepository<Form, Long> {
    @Query(value = "select avg(first) from Form ")
    int sumFirst();

    @Query(value = "select avg(second) from Form ")
    int sumSecond();

    @Query(value = "select avg(third) from Form ")
    int sumThird();
}
