package com.mkpits.Tarding11.service.impl;

import com.mkpits.Tarding11.dto.responce.TradingDataDto;
import com.mkpits.Tarding11.service.TradingDataService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Qualifier
@Service
public class TradingDataServiceImpl implements TradingDataService {


    @Override
    public List<TradingDataDto> getTradingData() {

        List<TradingDataDto> tradingDataDtoList = new ArrayList<>();

        TradingDataDto tradingDataDtoList1 = TradingDataDto.builder()
                .fiftyWeeksHigh(200000.98)
                .fiftyWeeksLow(5467.344)
                .scripeName("Bharat Ltd")
                .currentPrice(20000.786)
                .build();


        TradingDataDto tradingDataDtoList5 = TradingDataDto.builder()
                .fiftyWeeksHigh(200000.98)
                .fiftyWeeksLow(5467.344)
                .scripeName("Bharat Ltd")
                .currentPrice(20000.786)
                .build();


        TradingDataDto tradingDataDtoList3 = TradingDataDto.builder()
                .fiftyWeeksHigh(200000.98)
                .fiftyWeeksLow(5467.344)
                .scripeName("Bharat Ltd")
                .currentPrice(20000.786)
                .build();


        TradingDataDto tradingDataDtoList2 = TradingDataDto.builder()
                .fiftyWeeksHigh(200000.98)
                .fiftyWeeksLow(5467.344)
                .scripeName("Bharat Ltd")
                .currentPrice(20000.786)
                .build();


        TradingDataDto tradingDataDtoList4 = TradingDataDto.builder()
                .fiftyWeeksHigh(200000.98)
                .fiftyWeeksLow(5467.344)
                .scripeName("Bharat Ltd")
                .currentPrice(20000.786)
                .build();


        tradingDataDtoList.add(tradingDataDtoList1);
        tradingDataDtoList.add(tradingDataDtoList2);
        tradingDataDtoList.add(tradingDataDtoList3);
        tradingDataDtoList.add(tradingDataDtoList4);
        tradingDataDtoList.add(tradingDataDtoList5);

        return tradingDataDtoList;
    }
}
