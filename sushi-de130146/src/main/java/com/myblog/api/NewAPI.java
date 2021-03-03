package com.myblog.api;

import com.myblog.dto.NewDTO;
import com.myblog.service.INewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController(value = "newAPIOfWeb")
public class NewAPI {

    @Autowired
    private INewService newService;

    @PostMapping("/api/web/new")
    public NewDTO add(@RequestBody NewDTO dto) { return newService.save(dto); }

    @PutMapping("/api/web/new")
    public NewDTO update(@RequestBody NewDTO dto) { return newService.save(dto); }

    @DeleteMapping("/api/web/new")
    public void delete(@RequestBody long[] ids) { newService.delete(ids); }
}
