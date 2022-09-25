package com.abc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.abc.model.User;
import com.abc.service.UserService;

@RestController
//@RequestMapping("/api/v1")
public class UserController {

	@Autowired
	private UserService userService;

	@GetMapping("/")
	public ResponseEntity<List<User>> findAll() {
		return new ResponseEntity<List<User>>(userService.getAll(), HttpStatus.OK);
	}

	@GetMapping("/admin")
	public ResponseEntity<List<User>> findAllUserRoles() {
		return new ResponseEntity<>(userService.findAllUserRoles(), HttpStatus.OK);
	}

	@GetMapping("/welcome")
	public String welcome() {
		return "confirmed";
	}

}
