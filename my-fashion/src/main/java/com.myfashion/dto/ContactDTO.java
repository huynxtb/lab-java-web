package com.myfashion.dto;

import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;


@EqualsAndHashCode(callSuper = true)
@Data
public class ContactDTO extends AbstractDTO<ContactDTO>{

    private String email;
    private double content;
}
