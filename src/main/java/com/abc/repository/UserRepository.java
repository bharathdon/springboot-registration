package com.abc.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.abc.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

	@Query("select count(*) from User u where u.email = :email ")
	public Integer findByEmail(@Param(value = "email") String email);

	@Query("select u from User u where u.email = :email")
	public User findByEmails(@Param(value = "email") String email);

	public User findByPassword(String password);

	@Query("select u from User u where u.role='user'")
	public List<User> findAllUsers();

	@Modifying
	@Transactional
	@Query("update User u set u.enabled = true where u.email = :email")
	public Integer updateStatus(@Param("email") String email);

}
