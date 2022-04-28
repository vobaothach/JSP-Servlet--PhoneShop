package com.phoneshop.entity;

import com.sun.istack.NotNull;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "orders")
@Getter @Setter
public class OrderEntity extends BaseEntity{
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "status", columnDefinition = "BOOLEAN")
    // True: purchased
    // False: not purchased
    private Boolean status;

    @Column(name = "date")
    private Date date;

    @Column(name = "address", columnDefinition = "LONGTEXT")
    private String address;

    @Column(name = "description", columnDefinition = "LONGTEXT")
    private String description;

    @Column(name = "total")
    private float total;

    @OneToMany(mappedBy = "order")
    @LazyCollection(LazyCollectionOption.FALSE)
    private List<OrderItemEntity> orderItems = new ArrayList<>();

    @ManyToOne
    @JoinColumn(name = "discount_code", columnDefinition = "VARCHAR(10)")
    private DiscountEntity discount;

    @ManyToOne
    @JoinColumn(name = "user_email", columnDefinition = "VARCHAR(100)")
    private AccountEntity user;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public List<OrderItemEntity> getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(List<OrderItemEntity> orderItems) {
		this.orderItems = orderItems;
	}

	public DiscountEntity getDiscount() {
		return discount;
	}

	public void setDiscount(DiscountEntity discount) {
		this.discount = discount;
	}

	public AccountEntity getUser() {
		return user;
	}

	public void setUser(AccountEntity user) {
		this.user = user;
	}
    
    
    

}
