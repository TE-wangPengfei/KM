package com.km.config;

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "docconfig",locations = "classpath:document.properties")
public class DocumentSettings {
	/** file size */
	private String maxuploadlength;
	
	/** file's path */
	private String savefilepath;

	/**
	 * @return the maxuploadlength
	 */
	public String getMaxuploadlength() {
		return maxuploadlength;
	}

	/**
	 * @param maxuploadlength the maxuploadlength to set
	 */
	public void setMaxuploadlength(String maxuploadlength) {
		this.maxuploadlength = maxuploadlength;
	}

	/**
	 * @return the savefilepath
	 */
	public String getSavefilepath() {
		return savefilepath;
	}

	/**
	 * @param savefilepath the savefilepath to set
	 */
	public void setSavefilepath(String savefilepath) {
		this.savefilepath = savefilepath;
	}
}
