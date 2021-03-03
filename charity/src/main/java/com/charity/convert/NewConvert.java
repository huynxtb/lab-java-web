package com.charity.convert;

import com.charity.dto.NewDTO;
import com.charity.entity.NewEntity;
import org.springframework.stereotype.Component;


@Component
public class NewConvert {

    public NewDTO convertToDTO(NewEntity entity) {
        NewDTO result = new NewDTO();
        result.setId(entity.getId());
        result.setTitle(entity.getTitle());
        result.setContent(entity.getContent());
        result.setShortDescription(entity.getShortDescription());
        result.setImage(entity.getImage());
        return result;
    }

    public NewEntity convertToEntity(NewDTO dto) {
        NewEntity result = new NewEntity();
        result.setId(dto.getId());
        result.setTitle(dto.getTitle());
        result.setContent(dto.getContent());
        result.setShortDescription(dto.getShortDescription());
        result.setImage(dto.getImage());
        return result;
    }

    public NewEntity DtoToEntity(NewEntity entity, NewDTO dto) {
        entity.setId(dto.getId());
        entity.setTitle(dto.getTitle());
        entity.setContent(dto.getContent());
        entity.setShortDescription(dto.getShortDescription());
        entity.setImage(dto.getImage());
        return entity;
    }

}
