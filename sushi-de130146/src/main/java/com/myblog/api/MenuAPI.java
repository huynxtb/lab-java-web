package com.myblog.api;

import com.myblog.dto.MenuDTO;
import com.myblog.service.IMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController(value = "menuAPIOfWeb")
public class MenuAPI {

    @Autowired
    private IMenuService menuService;

    @PostMapping("/api/web/menu")
    public MenuDTO add(@RequestBody MenuDTO dto) { return menuService.save(dto); }

    @PutMapping("/api/web/menu")
    public MenuDTO update(@RequestBody MenuDTO dto) { return menuService.save(dto); }

    @DeleteMapping("/api/web/menu")
    public void delete(@RequestBody long[] ids) { menuService.delete(ids); }
}
