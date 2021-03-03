package com.myblog.service.impl;

import com.myblog.convert.MenuConvert;
import com.myblog.convert.NewConvert;
import com.myblog.dto.MenuDTO;
import com.myblog.dto.NewDTO;
import com.myblog.entity.MenuEntity;
import com.myblog.entity.NewEntity;
import com.myblog.repository.MenuRepository;
import com.myblog.repository.NewRepository;
import com.myblog.service.IMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class MenuService implements IMenuService {

    @Autowired
    private MenuRepository menuRepository;

    @Autowired
    private MenuConvert menuConvert;

    @Override
    public List<MenuDTO> findAll(Pageable pageable) {
        List<MenuDTO> dto = new ArrayList<>();
        List<MenuEntity> entities = menuRepository.findAll(pageable).getContent();
        for (MenuEntity item: entities) {
            MenuDTO menuDTO = menuConvert.convertToDTO(item);
            dto.add(menuDTO);
        }
        return dto;
    }

    @Override
    public int getTotalItem() {
        return (int) menuRepository.count();
    }

    @Override
    @Transactional
    public MenuDTO save(MenuDTO dto) {

        MenuEntity menuEntity = new MenuEntity();

        if (dto.getId() != null) {
            MenuEntity oldArea = menuRepository.findOne(dto.getId());
            dto.setCreatedBy(oldArea.getCreatedBy());
            menuEntity = menuConvert.DtoToEntity(oldArea, dto);
        } else {
            menuEntity = menuConvert.convertToEntity(dto);
        }
        return menuConvert.convertToDTO(menuRepository.save(menuEntity));
    }

    @Override
    @Transactional
    public void delete(long[] ids) {
        for (long id: ids) {
            menuRepository.delete(id);
        }
    }

    @Override
    public MenuDTO findById(long id) {
        MenuEntity entity = menuRepository.findOne(id);
        return menuConvert.convertToDTO(entity);
    }
}
