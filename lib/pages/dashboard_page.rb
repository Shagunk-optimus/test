class DashboardPage
    include PageObject

    direct_url BASE_URL + "dashboard"

    @@subtab_text = { "Summary" => "Getting started", "Trouble View" => "Received By GW", "Monitoring" => "Service Check Execution Time", "System View" => "Status Information Details", "Enterprise View" => "Monitoring Statistics : Host Groups", "Webmetrics" => "GroundWork has partnered with Neustar Webmetrics for web performance management monitoring." }

    link :sign_out, :text => "Sign out"
    link :show_install_info, :text => "Show Install Info"

    def logout
        #@browser.li(:class => "UITab portlet-menu-item").when_present.click
        @browser.li(:class => "UITab portlet-menu-item").fire_event 'mouseover'
        self.sign_out
    end

    def correct_login?(user)
        if user == "admin"
            user = "Administrator"
        end
        @browser.li(:class => "Name").text.should == "GroundWork #{user.capitalize}"
    end

    def check_in_dashboard
        self.wait_until(10) do
            @browser.text.include? "Getting started"
        end
    end

    def find_correct_potlets potlet
        self.wait_until(10) do
            @browser.text.include? potlet
        end
    end

    def go_to_subtab(subtab)
        @browser.link(:text => /Dashboards/).fire_event 'mouseover'
        @browser.link(:text => /#{subtab}/).when_present.click
    end

    def check_subtab(subtab)
        self.wait_until(10) do
            @browser.text.include? subtab
            if subtab == "Webmetrics"
                @browser.frame.div.text.include? @@subtab_text[subtab]
            else
                @browser.text.include? @@subtab_text[subtab]
            end
        end
    end
	
	def verify_user(username)
		if username == "admin"
			@browser.a(:text => /Configuration/).when_present.click
			@browser.frame(:id => /myframe/).frame(:name => /monarch_left/).td(:class => /row1_menuitem/).a(:text => /Host wizard/).when_present.click
		elsif username == "operator"
			@browser.a(:text => /Event Console/).exists?.should==true
			@browser.a(:text => /Event Console/).when_present.click
			@browser.a(:text => /Status/).exists?.should==true
			@browser.a(:text => /Status/).when_present.click
		elsif username == "user"
			@browser.a(:text => /Event Console/).exists?.should==false
			@browser.a(:text => /Status/).exists?.should==true
			@browser.a(:text => /Status/).when_present.click
		elsif username == "restricted_user"
			@browser.a(:text => /Event Console/).exists?.should==false
			@browser.a(:text => /Status/).exists?.should==true
			@browser.a(:text => /Status/).when_present.click
				
		end
	end	
			

end
