package com.exampleShowSpecificFields.ShowSpecificFields.model;

import com.fasterxml.jackson.annotation.JsonAnyGetter;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@AllArgsConstructor
@Entity
@Table(name = "ShowAllFields")
@NoArgsConstructor
public class ModelClass {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long SrNo;

    @Column
    private String firstName;

    @Column
    private String lastName;

    @Column
    private long phoneNo;

    @Column
    private String nickName;

    @Column
    private String bloodGroup;

}
