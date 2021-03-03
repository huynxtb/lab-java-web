package com.myfashion.dto;

import lombok.Getter;
import lombok.Setter;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@Setter
@Getter
public class AbstractDTO<T> {

    private Long id;
    private Timestamp createdDate;
    private Timestamp modifiedDate;
    private String createdBy;
    private String modifiedBy;
    private List<T> listDTO = new ArrayList<>();
    private Integer page;
    private Integer limit;
    private Integer totalPage;
    private Integer totalItem;
}
