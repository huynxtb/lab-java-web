package com.myblog.entity;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Getter
@Setter
@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public abstract class BaseEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "createddate")
	@CreatedDate
	private Date createdDate;

	@Column(name = "modifieddate")
	@LastModifiedDate
	private Date modifiedDate;

	@Column(name = "createdby")
	@CreatedBy
	private String createdBy;

	@Column(name = "modifiedby")
	@LastModifiedBy
	private String modifiedBy;

	@NotNull(message = "Content can't be null")
	@Column(name = "content", columnDefinition = "TEXT")
	private String content;

	@NotNull(message = "Image can't be null")
	@Column(name = "image", columnDefinition = "TEXT")
	private String image;

	@NotNull
	@Column(name = "shortdescription")
	private String shortDescription;

}
