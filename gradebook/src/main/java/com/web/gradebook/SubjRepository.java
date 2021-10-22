package com.web.gradebook;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface SubjRepository extends JpaRepository<Subject, Long> {
    @Query("SELECT sub FROM Subject sub WHERE sub.id = :id")
    Subject findOne(@Param("id") long id);
}
