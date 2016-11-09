package com.km.model.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * @author 5109V11255
 *
 */
@Entity
@Table(name = "km_group")
public class KM_Group implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	
	@NotNull
	@Column(name = "group_id")
	private String groupId;

	@NotNull
	@Column(name = "group_name")
	private String groupName;
	
	@NotNull
	@Column(name = "group_tag")
	private String groupTag;
	
	@Column(name = "group_description")
	private String groupDescription;
	
	@Column(name = "group_type")
	private String groupType;
	
	@JsonIgnore
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "kmGroup")
	private List<Technology> technologyList;
	
	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
	private Set<Auth_User> authUsers = new HashSet<Auth_User>();

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
	 * @return the groupId
	 */
	public String getGroupId() {
		return groupId;
	}

	/**
	 * @param groupId the groupId to set
	 */
	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}

	/**
	 * @return the groupName
	 */
	public String getGroupName() {
		return groupName;
	}

	/**
	 * @param groupName the groupName to set
	 */
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	/**
	 * @return the groupTag
	 */
	public String getGroupTag() {
		return groupTag;
	}

	/**
	 * @param groupTag the groupTag to set
	 */
	public void setGroupTag(String groupTag) {
		this.groupTag = groupTag;
	}

	/**
	 * @return the groupDescription
	 */
	public String getGroupDescription() {
		return groupDescription;
	}

	/**
	 * @param groupDescription the groupDescription to set
	 */
	public void setGroupDescription(String groupDescription) {
		this.groupDescription = groupDescription;
	}

	/**
	 * @return the groupType
	 */
	public String getGroupType() {
		return groupType;
	}

	/**
	 * @param groupType the groupType to set
	 */
	public void setGroupType(String groupType) {
		this.groupType = groupType;
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

	/**
	 * @return the authUsers
	 */
	public Set<Auth_User> getAuthUsers() {
		return authUsers;
	}

	/**
	 * @param authUsers the authUsers to set
	 */
	public void setAuthUsers(Set<Auth_User> authUsers) {
		this.authUsers = authUsers;
	}
}
