package com.web.gradebook;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface MarkRepository extends JpaRepository<Mark, Long> {
    @Query("SELECT m FROM Mark m WHERE m.subject = :subject")
    List<Mark> selectMark(@Param("subject") Subject subject);
}
