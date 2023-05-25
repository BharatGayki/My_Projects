package com.mkpits.Tarding11.controller1;

import com.mkpits.Tarding11.dto.responce.TradingDataDto;
import com.mkpits.Tarding11.service.TradingDataService;
import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;

@Controller
public class Home_Controller {

//    Autowired members must be defined in valid Spring bean (@Component|@Service|...)

    @Autowired
   public TradingDataService TradingDataServices;//interface
    @GetMapping("/")
    public String home(Model model){

        return "index";
    }

    @GetMapping("/dashboard")
    public String dashboard(Model model){


        List<TradingDataDto> tradingDataDtoList = TradingDataServices.getTradingData();///method implement in trading data

        model.addAttribute("trading",tradingDataDtoList);// trading used in html v b ̣


        return "dashboard";
    }


}
