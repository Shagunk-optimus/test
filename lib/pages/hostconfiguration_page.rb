class HostconfigurationPage
    include PageObject

    direct_url BASE_URL + "config/hosts"

    link :configuration_section, :text => 'Configuration'
    link :control_section, :text => 'Control'
    
    link :service_section, :text => 'Services'

    #En este branch arrastramos el bug de un iframe adentro de otro y no se esta usando pero igual lo dejo
    #poruqe en algun momento cuando se resuelva el bug se va a usar
    in_frame(:id => 'myframe') do |frame|
        in_frame({:name => 'monarch_left'}, frame) do |frame|
            link :host_groups, :text => /Host groups/, :frame => frame
            link :host_groups_modify, :text => "Modify", :frame => frame
            link :host_groups_modify_linux_server, :text=> "Linux Servers", :frame => frame

            link :host_group_new, :text => 'New', :frame => frame

            link :service_groups, :text => "Service groups", :frame => frame
            link :service_groups_new, :text => 'New', :href => "service_groups&task=new", :frame => frame

            link :commit_nagios, :text => 'Commit', :frame => frame
			
			link :hosts, :text => /Hosts/, :frame => frame
			
        end

        in_frame({:id => 'monarch_main'}, frame) do |frame_main|
            select_list :memebers, :name => 'memebers', :frame => frame_main
            button :remove_members, :value => "Remove >>", :frame => frame_main
            button :save_host_group, :name => 'save', :frame => frame_main

            text_field :hots_group_name, :name => "name", :frame => frame_main
            text_field :host_group_alias, :name => "alias", :frame => frame_main
            select_list :nonmembers, :name => "nonmembers", :frame => frame_main
            button :add_memebers, :value => "<< Add", :frame => frame_main
            button :confirm_add_members, :name => "add", :frame => frame_main

            text_field :service_group_name, :name => "name", :frame => frame_main
            text_field :service_group_alias, :name => "alias", :frame => frame_main
            button :service_group_add, :name => "add", :frame => frame_main

            button :service_add_host, :name => 'add_hosts', :frame => frame_main
            button :service_save, :name => 'save', :frame => frame_main

            button :confirm_nagios_commit, :name => 'commit', :frame => frame_main
			text_field :address, :name => 'address', :frame => frame_main
			select :contactgroup, :id => 'contactgroup.members', :frame => frame_main

        end
    end
	
	def visit_host_configuration
		framemain = @browser.frame(:id => 'myframe').frame(:name => 'monarch_main').when_present
		frameleft = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
		frameleft.link(:text => /Hosts/).when_present.click
		frameleft.link(:text => /Linux Servers /).when_present.click
		frameleft.link(:text => /localhost /).when_present.click
		frameleft.link(:text => /Detail/).when_present.click
		framemain.button(:name => /host_profile/).when_present.click		
	end

	def verify_host_profile_addition(host_profile)
		framemain = @browser.frame(:id => 'myframe').frame(:name => 'monarch_main').when_present
		framemain.select(:name => /profile_host/).option(:value => host_profile).exists?.should == true	
	end
	
	def verify_host_profile_deletion(host_profile)
		framemain = @browser.frame(:id => 'myframe').frame(:name => 'monarch_main').when_present
		framemain.select(:name => /profile_host/).option(:value => host_profile).exists?.should == false
	end
	
	def visit_host_configuration_new
		framemain = @browser.frame(:id => 'myframe').frame(:name => 'monarch_main').when_present
		frameleft = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
		frameleft.link(:text => /Hosts/).when_present.click
		frameleft.link(:text => /Linux Servers /).when_present.click
		frameleft.link(:text => /qa-ubuntu-12-04-64-2-renamed/).when_present.click
		frameleft.link(:text => /Detail/).when_present.click
	end
	
end
