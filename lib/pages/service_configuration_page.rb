class ServiceConfigurationPage
    include PageObject

    direct_url BASE_URL + "config/services"

    link :service_templates, :text => " Service templates"
    text_field :max_check_attempts, :name => "max_check_attempts"

    def open_generic_service
        frame = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
        frame.link(:text => /Service templates/).when_present.click
        frame.link(:text => /Modify/).when_present.click
        frame.link(:text => /generic-service/).when_present.click
    end

    def set_max_attempts
        frame = @browser.frame(:id => "myframe").frame(:name => "monarch_main").when_present
        frame.text_field(:name => "max_check_attempts").when_present.set "1"
        frame.button(:name => "save").when_present.click
    end

    def open_services
        frame = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
        frame.link(:text => /Services/).when_present.click
    end

    def check_service(name)
        frame = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
        frame.link(:text => /#{name}/).when_present.click
    end
    
    def set_max_check_attempts
        frame = @browser.frame(:id => "myframe").frame(:name => "monarch_main").when_present
        frame.text_field(:name => "max_check_attempts").when_present.set "1"
		frame.checkbox(:name => /active_checks_enabled/).clear
		frame.button(:name => "save").when_present.click
	end

	
	def visit_service_configuration
		framemain = @browser.frame(:id => 'myframe').frame(:name => 'monarch_main').when_present
		frameleft = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
		frameleft.link(:text => /Services/).when_present.click
		frameleft.link(:text => /local_cpu_java/).when_present.click
		framemain.link(:text => /Service Profiles/).when_present.click
	end

	def verify_service_profile_addition(service_profile)
		framemain = @browser.frame(:id => 'myframe').frame(:name => 'monarch_main').when_present
		framemain.select(:id => /profiles.members/).option(:value => service_profile).exists?.should == true
	end
	
	def verify_service_profile_deletion(service_profile)
		framemain = @browser.frame(:id => 'myframe').frame(:name => 'monarch_main').when_present
		framemain.select(:id => /profiles.members/).option(:value => service_profile).exists?.should == false
	end
end
