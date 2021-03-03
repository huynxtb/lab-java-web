package com.myblog.service;

import com.myblog.dto.NewDTO;

import java.util.List;

public interface INewService {
    List<NewDTO> findAll();
    NewDTO findById(long id);

}
