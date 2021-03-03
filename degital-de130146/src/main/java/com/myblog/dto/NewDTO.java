package com.myblog.dto;

import lombok.*;

@EqualsAndHashCode(callSuper = true)
@Data
public class NewDTO extends AbstractDTO<NewDTO>{

    private String title;
    private String shortDescription;
    private String content;
    private String image;
}
