package com.abc.model;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@NotNull
	private String firstName;

	@NotNull
	private String lastName;

	@NotBlank
	@Column(unique = true)
	private String email;

	@NotBlank
	private String password;

	private boolean enabled = false;
	
	private LocalDateTime last_updated;

	private String role = "role_user";

	public User(String firstName, String lastName, String email, String password, String role,LocalDateTime last_updated) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.role = role;
		this.last_updated = last_updated;
	}

}
