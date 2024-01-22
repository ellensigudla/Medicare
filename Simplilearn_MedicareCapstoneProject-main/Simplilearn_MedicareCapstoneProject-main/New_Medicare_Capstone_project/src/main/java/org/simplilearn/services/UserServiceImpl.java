package org.simplilearn.services;

import org.simplilearn.entities.User;
import org.simplilearn.models.LoginModel;
import org.simplilearn.models.UserModel;
import org.simplilearn.repositories.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{
	private UserRepository userRepository;
	
	public UserServiceImpl(UserRepository userRepository) {
		super();
		this.userRepository = userRepository;
	}
	@Override
	public User registerUser(UserModel userModel) {
		User user=new User();
		User user1 = null;
		user.setUsername(userModel.getUsername());
		user.setPassword(userModel.getPassword());
		user.setEmail(userModel.getEmail());
		user.setUserType("CUSTOMER");
		User userWithEmail=userRepository.findByEmail(userModel.getEmail());
		if(userWithEmail==null)
		{
			 user1=userRepository.save(user);
		}
		return user1;
	}
	@Override
	public User validateUser(LoginModel loginModel) {
		User user=userRepository.findByUsernameAndPassword(loginModel.getUsername(), loginModel.getPassword());
		return user;
	}
	@Override
	public User getUser(String username) {
		return userRepository.findByUsername(username);
	}

}
