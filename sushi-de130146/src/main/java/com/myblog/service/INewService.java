package com.myblog.service;

import com.myblog.dto.NewDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface INewService {
    NewDTO findById(long id);
    List<NewDTO> findAll(Pageable pageable);
    int getTotalItem();
    NewDTO save(NewDTO dto);
    void delete(long[] ids);
}
