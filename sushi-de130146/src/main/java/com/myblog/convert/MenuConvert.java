package com.myblog.convert;

import com.myblog.dto.MenuDTO;
import com.myblog.entity.MenuEntity;
import org.springframework.stereotype.Component;

import java.sql.Timestamp;

@Component
public class MenuConvert {
    public MenuDTO convertToDTO(MenuEntity entity) {
        MenuDTO result = new MenuDTO();
        result.setId(entity.getId());
        result.setName(entity.getName());
        result.setPrice(entity.getPrice());
        result.setImage(entity.getImage());
        result.setContent(entity.getContent());
        result.setShortDescription(entity.getShortDescription());
        result.setCreatedDate((Timestamp) entity.getCreatedDate());
        result.setModifiedDate((Timestamp) entity.getModifiedDate());
        result.setCreatedBy(entity.getCreatedBy());
        result.setModifiedBy(entity.getModifiedBy());
        return result;
    }

    public MenuEntity convertToEntity(MenuDTO dto) {
        MenuEntity result = new MenuEntity();
        result.setId(dto.getId());
        result.setName(dto.getName());
        result.setPrice(dto.getPrice());
        result.setImage(dto.getImage());
        result.setContent(dto.getContent());
        result.setShortDescription(dto.getShortDescription());
        result.setCreatedDate(dto.getCreatedDate());
        result.setModifiedDate(dto.getModifiedDate());
        result.setCreatedBy(dto.getCreatedBy());
        result.setModifiedBy(dto.getModifiedBy());
        return result;
    }

    public MenuEntity DtoToEntity(MenuEntity entity, MenuDTO dto) {
        entity.setId(dto.getId());
        entity.setName(dto.getName());
        entity.setPrice(dto.getPrice());
        entity.setImage(dto.getImage());
        entity.setContent(dto.getContent());
        entity.setShortDescription(entity.getShortDescription());
        entity.setCreatedDate(dto.getCreatedDate());
        entity.setModifiedDate(dto.getModifiedDate());
        entity.setCreatedBy(dto.getCreatedBy());
        entity.setModifiedBy(dto.getModifiedBy());
        return entity;
    }
}
