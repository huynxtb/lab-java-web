package com.charity.service.impl;


import com.charity.convert.NewConvert;
import com.charity.dto.NewDTO;
import com.charity.entity.NewEntity;
import com.charity.repository.NewRepository;
import com.charity.service.INewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
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
