package com.myblog.entity;

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
}
