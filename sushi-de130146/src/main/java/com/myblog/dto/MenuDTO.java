package com.myblog.dto;

import lombok.Data;
import lombok.EqualsAndHashCode;


@EqualsAndHashCode(callSuper = true)
@Data
public class MenuDTO extends AbstractDTO<MenuDTO>{

    private String name;
    private double price;
}
