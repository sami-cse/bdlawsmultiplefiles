package com.sami.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "act")
public class Act {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "act_id")
	private int id;

	@Column(name = "act_name")
	private String actName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getActName() {
		return actName;
	}

	public void setActName(String actName) {
		this.actName = actName;
	}

}
