package com.phoneshop.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "discount")
@Getter @Setter
public class DiscountEntity extends BaseEntity{
    @Id
    @Column(name = "code", columnDefinition = "VARCHAR(10)", unique = true)
    private String code;

    @Column(name = "description", columnDefinition = "LONGTEXT")
    private String description;

    @OneToMany(mappedBy = "discount")
    @LazyCollection(LazyCollectionOption.FALSE)
    private List<OrderEntity> orders = new ArrayList<>();

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<OrderEntity> getOrders() {
		return orders;
	}

	public void setOrders(List<OrderEntity> orders) {
		this.orders = orders;
	}
    
    
}
