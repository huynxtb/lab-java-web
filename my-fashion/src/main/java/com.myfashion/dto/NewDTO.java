package com.myfashion.dto;

import lombok.*;

@EqualsAndHashCode(callSuper = true)
@Data
public class NewDTO extends AbstractDTO<NewDTO>{

    private String title;
    private String content;
    private String name;
    private int age;

}
