package com.system.check;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

import com.system.validation.GroupOrder1;
import com.system.validation.GroupOrder2;

import lombok.Getter;
import lombok.Setter;

public class LoginForm {

	@NotEmpty(groups = { GroupOrder1.class }, message = "IDを入力してください。")
	@Setter @Getter
	private String loginName;

	@NotEmpty(groups = { GroupOrder1.class }, message = "パスワードを入力してください。")
	@Size(min = 4, max = 8, groups = { GroupOrder2.class }, message = "パスワードは{min}文字以上{max}文字以下です。")
	@Pattern(regexp = "[a-zA-Z0-9]*", groups = { GroupOrder2.class }, message = "パスワードは英数である必要があります。")
	@Setter @Getter
	private String loginPassword;
}