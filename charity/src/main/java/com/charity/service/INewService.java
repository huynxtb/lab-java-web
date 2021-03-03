package com.charity.service;

import com.charity.dto.NewDTO;

import java.util.List;

public interface INewService {
    NewDTO findById(long id);
    List<NewDTO> findAll();
}
