package com.abc.service;

import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.abc.model.User;
import com.abc.repository.UserRepository;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class UserService implements UserDetailsService {

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private JavaMailSender mailSender;

	public List<User> getAll() {
		return userRepository.findAll();
	}

	public User save(User user) {

		Integer findByEmail = userRepository.findByEmail(user.getEmail());
		if (findByEmail < 1) {
			user.setPassword(passwordEncoder.encode(user.getPassword()));
			return userRepository.save(user);
		} else {
			System.out.println();
			throw new IllegalStateException("email id exitsts : " + user.getEmail());

		}
	}

	public void send(String to, String email) {
		MimeMessage mimeMessage = mailSender.createMimeMessage();
		MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage);
		try {
			mimeMessageHelper.setText(email, true);
			mimeMessageHelper.setTo(to);
			mimeMessageHelper.setFrom("bharath@noreply.com");
			mimeMessageHelper.setSubject("confirm your email please... ");
			mailSender.send(mimeMessage);
		} catch (MessagingException e) {

			log.error("mail doesnot sent : " + e);
			// System.out.println("mail doesnot sent " + e);
		}
	}

	public User existByEmail(String email) {
		return userRepository.findByEmails(email);
	}

	public User existByPassword(String password) {
		return userRepository.findByPassword(password);
	}

	public List<User> findAllUserRoles() {
		return userRepository.findAllUsers();
	}

	public Integer updateStatus(String email) {
		userRepository.updateStatus(email);
		return 1;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		User user = userRepository.findByEmails(username);
		return org.springframework.security.core.userdetails.User.withUsername(user.getEmail())
				.password(user.getPassword()).roles(user.getRole()).build();
	}
}
