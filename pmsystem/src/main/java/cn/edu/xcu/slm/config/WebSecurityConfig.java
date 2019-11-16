package cn.edu.xcu.slm.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import cn.edu.xcu.slm.service.IUserService;
@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private IUserService iUserService;
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		//必须禁用，否则无法进入
		http.csrf().disable();
		//配置登录界面
		http
		.authorizeRequests().antMatchers("/**/*.js","/**/*.css","/**/*.css.map").permitAll()
		.anyRequest().authenticated().antMatchers("/**").access("hasRole('ROLE_USER')").and()
		.formLogin().usernameParameter("name").passwordParameter("pwd").loginPage("/user/toLogin").defaultSuccessUrl("/main").permitAll();
		http.logout().logoutSuccessUrl("/user/toLogin");
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(iUserService);
	}
	
	@Bean
	public PasswordEncoder createPassWordEncoder() {
		return new BCryptPasswordEncoder();
		
	}
}
