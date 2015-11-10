/**
* 系统设置控制器
* @return
*/
module.exports = Controller("Admin/BaseController", function(){
	"use strict";
	return{
		//系统设置
		indexAction:function(){
			var self=this;
			if(self.isGet()){
				self.assign("model","system");
				self.assign("action","index");
				self.display();			
			}else{
				var data=readFile(CONF_PATH + "/config.json");
				data={
					title:self.post("title"),
					keyword:self.post("keyword"),
					description:self.post("description"),
					url:self.post("url"),
					copyright:trimStr(self.post('copyright')),
					linkurl:trimStr(self.post('linkurl'))
				}
				writeFile(CONF_PATH + "/config.json",JSON.stringify(data),function(rs){
					if(rs){	//成功
						return self.redirect("/admin/system");
					}else{		//失败
						return self.redirect("/admin/system");
					}
				});
			}
		},
		//访问限制
		bannedAction:function(){
			var self=this;
			if(self.isGet()){
				self.assign("model","system");
				self.assign("action","banned");
				self.display();
			}else{

			}
		},
		//密码修改
		changeAction:function(){
			var self=this;
			if(self.isGet()){
				self.assign("model","system");
				self.assign("action","change");
				self.display();
			}else{
				return self.session("userInfo").then(function(data){
					return D("Users").where({id:data.id}).getField('pass').then(function(rs){
						var pwd=self.post('password');
						if(md5(pwd+"eyblog")==rs){
							var pwd1=md5(self.post('password1')+"eyblog");
							var user=self.post('user');
							return D('Users').where({id:data.id}).update({pass:pwd1,user:user}).then(function(res){
								if(res){
									//修改成功
									return self.redirect("/admin/system/change?err=1");
								}else{
									//修改失败
									return self.redirect("/admin/system/change?err=2");
								}
							})
						}else{
							//密码不正确
							return self.redirect("/admin/system/change?err=3");
						}
					});
				});
			}
		}		
	};
});