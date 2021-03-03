package com.myfashion.entity;

import lombok.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Getter
@Setter
@Entity
@Table(name = "news")
public class NewEntity extends BaseEntity {

    @NotNull(message = "Title can't be null")
    @Column(name = "title")
    private String title;

    @NotNull(message = "Content can't be null")
    @Column(name = "content", columnDefinition = "TEXT")
    private String content;

    @NotNull(message = "Content can't be null")
    @Column(name = "name", columnDefinition = "TEXT")
    private String name;

    @NotNull(message = "Content can't be null")
    @Column(name = "age")
    private int age;

}
