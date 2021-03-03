package com.charity.dto;

import lombok.Getter;
import lombok.Setter;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@Setter
@Getter
public class AbstractDTO<T> {

    private Long id;
    private List<T> listDTO = new ArrayList<>();

}
