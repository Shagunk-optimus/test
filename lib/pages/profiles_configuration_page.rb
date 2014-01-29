class ProfilesConfigurationPage
    include PageObject

    direct_url BASE_URL + "config/profiles"

	link :profile_importer_link, :text=> /Profile importer/
	button :import_button, :name=> /import/
	
	def open_all_profiles
        frameleft = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
        frameleft.link(:text => /Profile importer/).when_present.click
        frameleft.link(:text => /Import/).when_present.click
        frameleft.link(:text => /GDMA /).when_present.click
    end
	
	def import_host_profile
		framemain = @browser.frame(:id => 'myframe').frame(:name => 'monarch_main').when_present
		self.wait_until do
		framemain.td(:class => /row_lt/).checkbox(:value => /gdma-21-linux-host.xml/).set
		framemain.td(:class => /row_dk/).checkbox(:value => /gdma-21-windows-host.xml/).set
		framemain.checkbox(:value => /gdma-22-windows-host.xml/).set
		framemain.checkbox(:value => /gdma-aix-host.xml/).set
		framemain.checkbox(:name => /overwrite/).set
		framemain.button(:name=> /import/).when_present.click
		framemain.button(:value=> /Close/).when_present.click
		end
	end
	
	def visit_host_profile 
		frameleft = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
        frameleft.link(:text => /Host profiles/).when_present.click
        frameleft.link(:text => /Modify/).when_present.click
	end
	
	def verify_host_profile 
		frameleft = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
		sleep(3)
		frameleft.link(:text => /gdma-21-linux-host/).exists?.should == true 
		frameleft.link(:text => /gdma-21-windows-host/).exists?.should == true  
		frameleft.link(:text => /gdma-22-windows-host/).exists?.should == true 
		frameleft.link(:text => /gdma-aix-host/).exists?.should == true  
		
	end
	
	def import_service_profile
		framemain = @browser.frame(:id => 'myframe').frame(:name => 'monarch_main').when_present
		self.wait_until do
		framemain.checkbox(:value => /service-profile-Hitachi-AMS.xml/).set
		framemain.checkbox(:value => /service-profile-Hitachi-USPV.xml/).set
		framemain.checkbox(:value => /service-profile-citrix-system.xml/).set
		framemain.checkbox(:value => /service-profile-citrix-xenapp-services.xml/).set
		framemain.checkbox(:name => /overwrite/).set
		framemain.button(:name=> /import/).when_present.click
		framemain.button(:value=> /Close/).when_present.click
		end
	end
	
	
	def visit_service_profile 
		frameleft = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
        frameleft.link(:text => /Service profiles/).when_present.click
        frameleft.link(:text => /Modify/).when_present.click
	end
	
	
	def verify_service_profile 
		frameleft = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
		sleep(3)
		frameleft.link(:text => /Hitachi-AMS/).exists?.should == true 
		frameleft.link(:text => /Hitachi-USPV/).exists?.should == true  
		frameleft.link(:text => /citrix-system/).exists?.should == true 
		frameleft.link(:text => /citrix-xenapp-services/).exists?.should == true  
		
	end
	
	def create_host_profile(hp_name,hp_desc)
		framemain = @browser.frame(:id => 'myframe').frame(:name => 'monarch_main').when_present
		frameleft = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
		frameleft.link(:text => /Host profiles/).when_present.click
		frameleft.link(:text => /New /).when_present.click
		
		framemain.text_field(:name => /name/).when_present.set hp_name
		framemain.text_field(:name => /description/).when_present.set hp_desc
		framemain.select(:name => /template/).option(:value => /gdma-aix-host/).when_present.select
		framemain.button(:name => /add/).when_present.click
	end
		
	
	def assign_host
		framemain = @browser.frame(:id => 'myframe').frame(:name => 'monarch_main').when_present
		frameleft = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
		framemain.link(:text => /Assign Hosts/).when_present.click
		framemain.select(:name => /hosts_nonmembers/).option(:value => /localhost/).when_present.select
		framemain.button(:name => /hosts_add_member/).when_present.click
		framemain.button(:name => /save/).when_present.click
	end
	
	
		def create_servce_profile(sp_name,sp_desc)
		framemain = @browser.frame(:id => 'myframe').frame(:name => 'monarch_main').when_present
		frameleft = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
		frameleft.link(:text => /Service profiles/).when_present.click
		frameleft.link(:text => /New /).when_present.click
		
		framemain.text_field(:name => /name/).when_present.set sp_name
		framemain.text_field(:name => /description/).when_present.set sp_desc
		framemain.button(:name => /add/).when_present.click
	end
		
	
	def assign_service
		framemain = @browser.frame(:id => 'myframe').frame(:name => 'monarch_main').when_present
		framemain.select(:id => /services.nonmembers/).option(:value => /local_cpu_java/).when_present.select
		framemain.button(:name => /services_add_member/).when_present.click
		framemain.button(:name => /save/).when_present.click
	end
	
	def select_host_profile
		frameleft = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
		frameleft.link(:text => /test_hp/).when_present.click
	end
	
	def select_service_profile
		frameleft = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
		frameleft.link(:text => /test_sp/).when_present.click
	end
	
	def delete_host_profile
		framemain = @browser.frame(:id => 'myframe').frame(:name => 'monarch_main').when_present
		frameleft = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
		framemain.button(:name => /delete/).when_present.click
		framemain.button(:name => /confirm_delete/).when_present.click
	end


  

end
