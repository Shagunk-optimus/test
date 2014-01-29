class LoginPage
    include PageObject
    
    direct_url BASE_URL

    text_field :user, :name => 'josso_username'
    text_field :password, :name => 'josso_password'
    button :login, :value => 'Login'
    
    	link :knowledge_base, :text => /Knowledge Base/
	link :case_manager, :text => /Case Manager/
	link :forums, :text => /Forums/
	link :groundwork, :text => /www.gwos.com/

    def login_user(user,password)
        self.user = user
        self.password = password
        self.login
    end
end
 
