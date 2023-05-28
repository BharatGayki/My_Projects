package com.example.TraddingDataToDataBase.dto;

import lombok.*;

@Getter
@Setter
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class StudentDto {


    private Long id;
    private String fName;
    private String lName;
    private String email;
    private String mobile;
    private String status;

}
