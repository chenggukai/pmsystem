package cn.edu.xcu.slm.auto;

import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.InjectionConfig;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.TemplateConfig;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
//自动生成
public class codeGenerator {
	public static void main(String[] args) {
		//全局配置
		 GlobalConfig globalConfig = new GlobalConfig();
		 globalConfig.setOutputDir(System.getProperty("user.dir") + "/src/main/java");//告诉生成的代码放在哪了
		 globalConfig.setAuthor("nychenggu");//告诉作者是谁
		 globalConfig.setOpen(true);
		//链接到数据库
		 DataSourceConfig dataSourceConfig = new DataSourceConfig();
		dataSourceConfig.setUrl("jdbc:mysql://localhost:3306/xcxy?useUnicode=true&useSSL=false&characterEncoding=utf8&serverTimezone=UTC");
		 dataSourceConfig.setDriverName("com.mysql.jdbc.Driver");
		 dataSourceConfig.setUsername("root");
		 dataSourceConfig.setPassword("root");
		
		 //自定义代码模板
		 TemplateConfig templateConfig=new TemplateConfig();
		 //自定义属性注入
		 InjectionConfig injectionConfig=new InjectionConfig() {

			@Override
			public void initMap() {
				// TODO Auto-generated method stub
				
			}
		 };
			//配置包
			 PackageConfig packageConfig=new PackageConfig();
			 packageConfig.setParent("cn.edu.xcu.slm");//代码自动生成的位置			 
			 //生成策略
			 StrategyConfig strategyConfig=new StrategyConfig();
			 strategyConfig.setTablePrefix("t");//告诉表明前缀
			 //这里把数据库中表名 t_user_role 转为驼峰命名法
			 
			 strategyConfig.setNaming(NamingStrategy.underline_to_camel);//告诉类命名策略是什么
			 //AutoGenerator自动生成器
			 AutoGenerator generator = new AutoGenerator();
			 generator.setGlobalConfig(globalConfig);
			 generator.setDataSource(dataSourceConfig);
			 generator.setTemplate(templateConfig);
			 generator.setCfg(injectionConfig);
			 generator.setPackageInfo(packageConfig);
			 generator.setStrategy(strategyConfig);
			 generator.execute();//执行
		

	}

}
