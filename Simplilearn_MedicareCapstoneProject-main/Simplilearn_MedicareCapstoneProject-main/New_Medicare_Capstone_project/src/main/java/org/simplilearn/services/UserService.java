package org.simplilearn.services;

import org.simplilearn.entities.User;
import org.simplilearn.models.LoginModel;
import org.simplilearn.models.UserModel;

public interface UserService {
	User registerUser(UserModel userModel);
	User validateUser(LoginModel loginModel);
	User getUser(String username);
}
