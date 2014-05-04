package com.demo.user;

import com.demo.blog.Blog;
import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

/**
 * BlogValidator.
 */
public class UserValidator extends Validator {
	
	protected void validate(Controller controller) {
		validateRequiredString("user.username", "usernameMsg", "请输入用户名");
		validateRequiredString("user.age", "ageMsg", "请输入年龄!");
		validateRequiredString("user.address", "addressMsg", "请输入地址!");
        validateInteger("user.age", 1,100,"ageMsg", "年龄范围是1~100!");
	}
	
	protected void handleError(Controller controller) {
		controller.keepModel(User.class);
		
		String actionKey = getActionKey();
		if (actionKey.equals("/user/save"))
			controller.render("add.jsp");
		else if (actionKey.equals("/user/update"))
			controller.render("edit.jsp");
	}
}
