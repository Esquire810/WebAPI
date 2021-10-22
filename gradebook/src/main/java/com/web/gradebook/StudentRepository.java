package com.web.gradebook;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface StudentRepository extends JpaRepository<Student, Long> {
    @Query("SELECT s FROM Student s WHERE s.group = :group ORDER BY s.lastName ")
    List<Student> findByGroup(@Param("group") Group group);

    @Query("SELECT s FROM Student s WHERE (LOWER(s.firstName) LIKE LOWER(CONCAT('%', :pattern, '%'))) or (LOWER(s.lastName) LIKE LOWER(CONCAT('%', :pattern, '%')))")
    List<Student> findByPattern(@Param("pattern") String pattern);
}
