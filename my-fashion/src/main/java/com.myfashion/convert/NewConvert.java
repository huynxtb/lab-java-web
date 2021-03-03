package com.myfashion.convert;

import com.myfashion.dto.NewDTO;
import com.myfashion.entity.NewEntity;
import org.springframework.stereotype.Component;
import java.sql.Timestamp;

@Component
public class NewConvert {

    public NewDTO convertToDTO(NewEntity entity) {
        NewDTO result = new NewDTO();
        result.setId(entity.getId());
        result.setTitle(entity.getTitle());
        result.setContent(entity.getContent());
        result.setCreatedDate((Timestamp) entity.getCreatedDate());
        result.setModifiedDate((Timestamp) entity.getModifiedDate());
        result.setCreatedBy(entity.getCreatedBy());
        result.setModifiedBy(entity.getModifiedBy());
        return result;
    }

    public NewEntity convertToEntity(NewDTO dto) {
        NewEntity result = new NewEntity();
        result.setId(dto.getId());
        result.setTitle(dto.getTitle());
        result.setContent(dto.getContent());
        result.setCreatedDate(dto.getCreatedDate());
        result.setModifiedDate(dto.getModifiedDate());
        result.setCreatedBy(dto.getCreatedBy());
        result.setModifiedBy(dto.getModifiedBy());
        return result;
    }

    public NewEntity DtoToEntity(NewEntity entity, NewDTO dto) {
        entity.setId(dto.getId());
        entity.setTitle(dto.getTitle());
        entity.setContent(dto.getContent());
        entity.setCreatedDate(dto.getCreatedDate());
        entity.setModifiedDate(dto.getModifiedDate());
        entity.setCreatedBy(dto.getCreatedBy());
        entity.setModifiedBy(dto.getModifiedBy());
        return entity;
    }

}
