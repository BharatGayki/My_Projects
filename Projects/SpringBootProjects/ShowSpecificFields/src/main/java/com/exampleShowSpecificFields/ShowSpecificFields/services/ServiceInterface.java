package com.exampleShowSpecificFields.ShowSpecificFields.services;

import com.exampleShowSpecificFields.ShowSpecificFields.model.ModelClass;

import java.util.List;

public interface ServiceInterface {

    List<ModelClass> getAllFields();

    void saveAllFields(ModelClass modelClass);
//
//    ModelClass getallFieldsBiSrno(long SrNo);
}
