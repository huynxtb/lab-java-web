package com.myblog.service.impl;


import com.myblog.convert.NewConvert;
import com.myblog.dto.NewDTO;
import com.myblog.entity.NewEntity;
import com.myblog.repository.NewRepository;
import com.myblog.service.INewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;


@Service
public class NewService implements INewService {

    @Autowired
    private NewRepository newRepository;

    @Autowired
    private NewConvert newConvert;

    @Override
    public List<NewDTO> findAll(Pageable pageable) {
        List<NewDTO> dto = new ArrayList<>();
        List<NewEntity> entities = newRepository.findAll(pageable).getContent();
        for (NewEntity item: entities) {
            NewDTO newDTO = newConvert.convertToDTO(item);
            dto.add(newDTO);
        }
        return dto;
    }

    @Override
    public int getTotalItem() {
        return (int) newRepository.count();
    }

    @Override
    @Transactional
    public NewDTO save(NewDTO dto) {

        NewEntity newEntity = new NewEntity();

        if (dto.getId() != null) {
            NewEntity oldArea = newRepository.findOne(dto.getId());
            dto.setCreatedBy(oldArea.getCreatedBy());
            newEntity = newConvert.DtoToEntity(oldArea, dto);
        } else {
            newEntity = newConvert.convertToEntity(dto);
        }
        return newConvert.convertToDTO(newRepository.save(newEntity));
    }

    @Override
    @Transactional
    public void delete(long[] ids) {
        for (long id: ids) {
            newRepository.delete(id);
        }
    }

    @Override
    public NewDTO findById(long id) {
        NewEntity entity = newRepository.findOne(id);
        return newConvert.convertToDTO(entity);
    }
}
