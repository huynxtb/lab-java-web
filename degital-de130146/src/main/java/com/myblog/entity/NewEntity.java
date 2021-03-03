package com.myblog.entity;

import lombok.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Getter
@Setter
@Entity
@Table(name = "new")
public class NewEntity extends BaseEntity {

    @NotNull(message = "Title can't be null")
    @Column(name = "title")
    private String title;

    @NotNull(message = "Content can't be null")
    @Column(name = "content", columnDefinition = "TEXT")
    private String content;

    @NotNull(message = "Image can't be null")
    @Column(name = "image", columnDefinition = "TEXT")
    private String image;

    @NotNull(message = "Short Description can't be null")
    @Column(name = "shortdescription", columnDefinition = "TEXT")
    private String shortDescription;

}
