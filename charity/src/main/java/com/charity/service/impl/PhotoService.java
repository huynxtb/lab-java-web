package com.charity.service.impl;

import com.charity.convert.PhotoConvert;
import com.charity.dto.NewDTO;
import com.charity.dto.PhotoDTO;
import com.charity.entity.NewEntity;
import com.charity.entity.PhotoEntity;
import com.charity.repository.PhotoRepository;
import com.charity.service.IPhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PhotoService implements IPhotoService {

    @Autowired
    private PhotoRepository photoRepository;

    @Autowired
    private PhotoConvert photoConvert;

    @Override
    public PhotoDTO findById(long id) {
        PhotoEntity entity = photoRepository.findOne(id);
        return photoConvert.convertToDTO(entity);
    }

    @Override
    public List<PhotoDTO> findAll() {
        List<PhotoDTO> dto = new ArrayList<>();
        List<PhotoEntity> entities = photoRepository.findAll();
        for (PhotoEntity item: entities) {
            PhotoDTO photoDTO = photoConvert.convertToDTO(item);
            dto.add(photoDTO);
        }
        return dto;
    }
}
