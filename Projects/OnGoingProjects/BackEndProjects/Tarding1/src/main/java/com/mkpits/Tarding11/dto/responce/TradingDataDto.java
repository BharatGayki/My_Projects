package com.mkpits.Tarding11.dto.responce;


import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder

public class TradingDataDto {

    private long id;

    private double fiftyWeeksHigh;

    private double fiftyWeeksLow;

    private String scripeName;

    private double currentPrice;


}
