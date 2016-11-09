package com.km.model.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 * @author 5109V11255
 *
 */
@Entity
@Table(name = "technology")
public class Technology implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@NotNull
	@Column(name = "technology_id")
	private String technologyId;
	
	@NotNull
	@Column(name = "technology_name")
	private String technologyName;
	
	@Column(name = "technology_abstract")
	private String technologyAbstract;
	
	@Column(name = "create_by")
	private String createBy;
	
	@Column(name = "create_date")
	private String createDate;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "business_id")
	private Business business;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "group_id")
	private KM_Group kmGroup;

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
	 * @return the technologyId
	 */
	public String getTechnologyId() {
		return technologyId;
	}

	/**
	 * @param technologyId the technologyId to set
	 */
	public void setTechnologyId(String technologyId) {
		this.technologyId = technologyId;
	}

	/**
	 * @return the technologyName
	 */
	public String getTechnologyName() {
		return technologyName;
	}

	/**
	 * @param technologyName the technologyName to set
	 */
	public void setTechnologyName(String technologyName) {
		this.technologyName = technologyName;
	}

	/**
	 * @return the technologyAbstract
	 */
	public String getTechnologyAbstract() {
		return technologyAbstract;
	}

	/**
	 * @param technologyAbstract the technologyAbstract to set
	 */
	public void setTechnologyAbstract(String technologyAbstract) {
		this.technologyAbstract = technologyAbstract;
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
	 * @return the business
	 */
	public Business getBusiness() {
		return business;
	}

	/**
	 * @param business the business to set
	 */
	public void setBusiness(Business business) {
		this.business = business;
	}

	/**
	 * @return the kmGroup
	 */
	public KM_Group getKmGroup() {
		return kmGroup;
	}

	/**
	 * @param kmGroup the kmGroup to set
	 */
	public void setKmGroup(KM_Group kmGroup) {
		this.kmGroup = kmGroup;
	}
}
