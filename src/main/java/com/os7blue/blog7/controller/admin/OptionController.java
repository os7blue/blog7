package com.os7blue.blog7.controller.admin;

import com.os7blue.blog7.service.OptionService;
import org.springframework.web.bind.annotation.*;

import java.util.Map;


@RestController
@RequestMapping("/admin/option")
public class OptionController {

    private final OptionService optionService;

    public OptionController(OptionService optionService) {
        this.optionService = optionService;
    }


    @PostMapping(value = "/edit",produces = "application/json;charset=UTF-8")
    public String edit(@RequestBody Map<String, String> params ){

        optionService.changeOptionValue(params);

        return "1";

    }
}
