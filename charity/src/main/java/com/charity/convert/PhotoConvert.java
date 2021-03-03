package com.charity.convert;

import com.charity.dto.PhotoDTO;
import com.charity.entity.PhotoEntity;
import org.springframework.stereotype.Component;

@Component
public class PhotoConvert {

    public PhotoDTO convertToDTO(PhotoEntity entity) {
        PhotoDTO result = new PhotoDTO();
        result.setId(entity.getId());
        result.setName(entity.getName());
        result.setImage(entity.getImage());
        return result;
    }

    public PhotoEntity convertToEntity(PhotoDTO dto) {
        PhotoEntity result = new PhotoEntity();
        result.setId(dto.getId());
        result.setName(dto.getName());
        result.setImage(dto.getImage());
        return result;
    }

    public PhotoEntity DtoToEntity(PhotoEntity entity, PhotoDTO dto) {
        entity.setId(dto.getId());
        entity.setName(dto.getName());
        entity.setImage(dto.getImage());
        return entity;
    }

}
