package com.charity.dto;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@Data
public class PhotoDTO extends AbstractDTO<PhotoDTO>{

    private String name;
    private String image;
}
