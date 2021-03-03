package com.myblog.service;

import com.myblog.dto.MenuDTO;
import com.myblog.dto.NewDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IMenuService {
    MenuDTO findById(long id);
    List<MenuDTO> findAll(Pageable pageable);
    int getTotalItem();
    MenuDTO save(MenuDTO dto);
    void delete(long[] ids);
}
