package com.km.model.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * @author 5109V11255
 *
 */
@Entity
@Table(name = "business")
public class Business implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@NotNull
	@Column(name = "business_id")
	private String businessId;
	
	@NotNull
	@Column(name = "business_name")
	private String businessName;
	
	@Column(name = "business_abstract")
	private String businessAbstract;
	
	@Column(name = "create_by")
	private String createBy;
	
	@Column(name = "create_date")
	private String createDate;
	
	@JsonIgnore
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "business")
	private List<Technology> technologyList;

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the businessId
	 */
	public String getBusinessId() {
		return businessId;
	}

	/**
	 * @param businessId the businessId to set
	 */
	public void setBusinessId(String businessId) {
		this.businessId = businessId;
	}

	/**
	 * @return the businessName
	 */
	public String getBusinessName() {
		return businessName;
	}

	/**
	 * @param businessName the businessName to set
	 */
	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}

	/**
	 * @return the businessAbstract
	 */
	public String getBusinessAbstract() {
		return businessAbstract;
	}

	/**
	 * @param businessAbstract the businessAbstract to set
	 */
	public void setBusinessAbstract(String businessAbstract) {
		this.businessAbstract = businessAbstract;
	}

	/**
	 * @return the createBy
	 */
	public String getCreateBy() {
		return createBy;
	}

	/**
	 * @param createBy the createBy to set
	 */
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	/**
	 * @return the createDate
	 */
	public String getCreateDate() {
		return createDate;
	}

	/**
	 * @param createDate the createDate to set
	 */
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	/**
	 * @return the technologyList
	 */
	public List<Technology> getTechnologyList() {
		return technologyList;
	}

	/**
	 * @param technologyList the technologyList to set
	 */
	public void setTechnologyList(List<Technology> technologyList) {
		this.technologyList = technologyList;
	}
}
