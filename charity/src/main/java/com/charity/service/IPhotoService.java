package com.charity.service;

import com.charity.dto.PhotoDTO;

import java.util.List;

public interface IPhotoService {
    PhotoDTO findById(long id);
    List<PhotoDTO> findAll();
}
