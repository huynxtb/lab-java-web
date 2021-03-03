package com.myblog.service.impl;


import com.myblog.convert.NewConvert;
import com.myblog.dto.NewDTO;
import com.myblog.entity.NewEntity;
import com.myblog.repository.NewRepository;
import com.myblog.service.INewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class NewService implements INewService {

    @Autowired
    private NewRepository newRepository;

    @Autowired
    private NewConvert newConvert;

    @Override
    public List<NewDTO> findAll() {
        List<NewDTO> dto = new ArrayList<>();
        List<NewEntity> entities = newRepository.findAll();
        for (NewEntity item: entities) {
            NewDTO newDTO = newConvert.convertToDTO(item);
            dto.add(newDTO);
        }
        return dto;
    }

    @Override
    public NewDTO findById(long id) {
        NewEntity entity = newRepository.findOne(id);
        return newConvert.convertToDTO(entity);
    }
}
