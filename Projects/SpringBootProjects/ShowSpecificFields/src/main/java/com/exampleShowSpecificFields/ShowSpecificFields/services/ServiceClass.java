package com.exampleShowSpecificFields.ShowSpecificFields.services;

import com.exampleShowSpecificFields.ShowSpecificFields.model.ModelClass;
import com.exampleShowSpecificFields.ShowSpecificFields.repo.MainRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class ServiceClass implements ServiceInterface {

    @Autowired
   private MainRepository mainRepository;

    @Override
    public List<ModelClass> getAllFields() {

        return mainRepository.findAll() ;
    }

    @Override
    public void saveAllFields(ModelClass modelClass) {
        this.mainRepository.save(modelClass);
    }
//
//    @Override
//    public void saveAllFields(ModelClass modelClass) {
//
//        this.mainRepository.save(modelClass);
//    }
//
//    @Override
//    public ModelClass getallFieldsBiSrno(long SrNo) {
//        Optional<ModelClass>optional =mainRepository.findById(SrNo);
//    ModelClass modelClass = null;
//        if (optional.isPresent()){
//            modelClass = optional.get();
//        }
//        else {
//            throw new RuntimeException("Employee not found for id::"+SrNo);
//            /// also add error page
//
//
//        }
//
//        return modelClass;
//
//    }

}

