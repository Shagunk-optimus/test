class HostsConfigurationPage
    include PageObject

    direct_url BASE_URL + "config/hosts"

    def remove_host(host_IP, host_name)
		short_IP = host_IP[0,11]+"*"
        @browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Delete hosts/).when_present.click
        @browser.frame(:id => "myframe").frame(:name => "monarch_main").select_list(:name => "search").when_present.select short_IP
        if browser.text.include? (host_name)
			@browser.frame(:id => "myframe").frame(:name => "monarch_main").checkbox(:value => host_name).set
		else
			@browser.frame(:id => "myframe").frame(:name => "monarch_main").checkbox(:value => host_IP).set
		end		
        @browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:value => "Delete").when_present.click
    end
	
	def remove_all_host(subnet_name)
        @browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text => "Delete hosts").when_present.click
        @browser.frame(:id => "myframe").frame(:name => "monarch_main").select_list(:name => "search").when_present.select subnet_name
        @browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:value => "Check All").when_present.click
        @browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:value => "Delete").when_present.click
    end
    
    def open_generic_host
        frame = @browser.frame(:id => "myframe").frame(:name => "monarch_left").when_present
        frame.link(:text => /Host templates/).when_present.click
        frame.link(:text => /Modify/).when_present.click
        frame.link(:text => /generic-host/).when_present.click
	end

end
 
