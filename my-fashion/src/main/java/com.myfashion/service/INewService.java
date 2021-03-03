package com.myfashion.service;

import com.myfashion.dto.NewDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface INewService {
    NewDTO findById(long id);
    List<NewDTO> findAll();
    int getTotalItem();
}
