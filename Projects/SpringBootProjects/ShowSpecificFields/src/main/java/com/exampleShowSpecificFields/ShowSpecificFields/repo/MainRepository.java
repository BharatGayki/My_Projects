package com.exampleShowSpecificFields.ShowSpecificFields.repo;

import com.exampleShowSpecificFields.ShowSpecificFields.model.ModelClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MainRepository extends JpaRepository<ModelClass , Long> {


}
