require 'net/http'
require 'open-uri'
require 'rest_client'
require 'nokogiri'

xml_parsed = "";
tag1 = "";
tag2 = "";
tag3 = "";
tag4 = "";
errorCode = "";
the_error = "";
statusCode = "";
xmlData = "";
message = "";

urlPostEventsData = '<?xml version="1.0" encoding="UTF-8" standalone="yes"?><events><event consolidationName="NAGIOSEVENT" monitorServer="locahost" monitorStatus="UP" service="local_load" appType="NAGIOS" device="127.0.0.1" severity="SERIOUS" textMessage="This is a serious Nagios Message on Device 127.0.0.1" operationStatus="OPEN" host="localhost" reportDate="2013-06-02T10:55:32.943" errorType="MyError" component="MySubComponent"> <properties><property name="Latency" value="125.1"/> <property name="UpdatedBy" value="UnitTester"/> <property name="Comments" value="This is a test."/> </properties> </event> </events>'
urlPutEventsData = '<?xml version="1.0" encoding="UTF-8" standalone="yes"?><events><event consolidationName="NAGIOSEVENT" monitorServer="locahost" monitorStatus="UP" service="local_load" appType="NAGIOS" device="127.0.0.1" severity="SERIOUS" textMessage="This is a serious Nagios Message on Device 127.0.0.1" operationStatus="OPEN" host="localhost" reportDate="2013-06-02T10:55:32.943" errorType="MyError" component="MySubComponent"> <properties> <property name="Latency" value="125.31"/> <property name="UpdatedBy" value="UnitTester"/> <property name="Comments" value="This is a test."/> </properties> </event> </events>'
urlPostHostData = '<?xml version="1.0" encoding="UTF-8" standalone="yes"?> <hosts><host hostName="host100" description="First of my servers"  monitorStatus="UP" appType="NAGIOS"  deviceIdentification="172.28.112.13" monitorServer="localhost"  deviceDisplayName="Device-50" ><properties><property name="Latency" value="125" /></properties></host></hosts>'
urlPostHostGroupData = '<?xml version="1.0" encoding="UTF-8" standalone="yes"?><hostGroups><hostGroup name="blueGroup" description="My Blues Group" alias="blue"><hosts><host hostName="localhost" /><host hostName="notfound-host"/></hosts></hostGroup><hostGroup name="redGroup" description="My Red Group" alias="red"><hosts><host hostName="demo"/><host hostName="localhost"/></hosts></hostGroup></hostGroups>'
urlPostServicesData = '<?xml version="1.0" encoding="UTF-8" standalone="yes"?><services><service description="service-109" hostName="localhost" monitorServer="localhost" deviceIdentification="127.0.0.1" appType="NAGIOS"  monitorStatus="OK" lastStateChange="2013-05-22T09:36:47-07:00" stateType="HARD" checkType="ACTIVE" lastHardState="PENDING"><properties><property name="Latency" value="950"/><property name="ExecutionTime" value="7"/></properties></service></services>'
urlPostDevicesData = '<?xml version="1.0" encoding="UTF-8" standalone="yes"?><devices><device displayName="device900" identification="172.28.128.100"><hosts><host hostName="hostabc" description="HostABC"></host><host hostName="hostdef" description="HostDEF"></host></hosts></device></devices>'
urlPostCategoriesData = '<?xml version="1.0" encoding="UTF-8" standalone="yes"?><categories><category name="west-region" description="servers in the west region" entityTypeName="SERVICE_GROUP"/><category name="east-region" description="servers in the east region" entityTypeName="SERVICE_GROUP"/></categories>'

#Scenario: Validate license key
Given /^I am on Monitor Enterprise license page$/ do
    #on LicensePage do |page|		
    #end
	visit LicensePage
	sleep(3)
end

When /^I add the license key$/ do
	#visit LicensePage
    on LicensePage do |page|
	    page.license_element.clear
		sleep(2)		
        page.license_element.set '#Mon Dec 17 12:17:22 PST 2012
property_param_11=adLYiFdYwVLLFadiVJmFVnbiYwndYmYiRFsbsnJidwbdbVFTnmiLHsnmLTwTHiYsTVFnJTLYFiwLnHLdVT
property_param_10=30819f300d06092a864886f70d010101050003818d00308189028181008ccce3522bf666bf0104f4de6d18a5efd84ecde47e64f9275ce623ec5eed1480305e85acae4223245308f2f8343742810f12b1cb0b8a210728ac1a6e359f634afdfca1b0902356df5f1ff516b0e3b748769693178b8788d8e47d9db176de718f548859d578d28259296c7e8382e77ad6cfd79d4ee61eb9172501b5d1a9fdb0e50203010001
creationDate=1355775442356
startDate=1355356800000
property_param_9=miLmJYRH
property_param_8=YaiHisFsRwRHiaJbVmFdiFRTFVLddmaFnwYHaFiJbaawnL
property_param_7=banJniLiFmFJnYwsTdLRnLFLaRLJdmambnYsaFiibaannd
property_param_6=TbRTwiLb
property_param_5=wRiwVdaw
property_param_4=nRYmiRLbsmdHLsbVJVnJFLmVVLFRTawmJmLYHJTFsVFamFsHbnYHssRbTnbRnTRTaYRJHRRiiRVTaYnHJJFFHHHHYVibsYYY
property_param_3=Hd
property_param_2=FFHsTHYaRaHsdH
property_param_1=VaHVLH
property_orderID=eng-large-key
expireAfterFirstRun=1450051200000
signature=4ba0aae314120fe08986e768f317373ebc7f668798e44bab1eaa085b4c46c89ea58ffa6f978add1e541cac7e3a1ada949ea177e6e30cacc96ec28aad292919a5d5fe27111928087f4e17daaa01730fd81cd8fb85867ac119cc30f2096aec624500b5d7af63089eba976299790bfdadf4c14a1de2a5c65c83c68f0179bd61e3ad
expirationDate=1450051200000
property_param_12=TFVVdJYmbaiaVdYFwsHiVHnbnLbbwHmYmRswbVHmibbdJF'
		sleep(3)
		page.applylicense_element.click
		sleep(5)
		
	end
	
end

Then /^the license key should be validated$/ do
sleep(5)
visit DashboardPage
#on LicensePage do |page|
    #Watir::Wait.until {
     #   @browser.td(:text =>'Thank you for validating the license. Your license is activated now. Happy Monitoring!').exists?
#		}
#	visit AdministrationViewPage
	#end

end

#Scenario: Validate build number
When /^I select show install info$/ do
    on DashboardPage do |page|
    	#page.dashboard_element.when_present.click
    	sleep(2)
        page.show_install_info_element.when_present.click
    end
end

Then /^I should see the correct build number$/ do |build|
    on DashboardPage do |page|
        info_text = @browser.span(:id => "last_checked").p(:text => /PostgreSQL/).text.split("\n")
        name = info_text.grep(/^name/)[0].split("= ")[1]
        version = info_text.grep(/^version/)[0].split("= ")[1]

        name.should == NAME
        version.should == VERSION
    end
end

#Scenario: Auto Discovery

Given /^I specify a filter "(.+?)" of type "(.+?)" and a Range\/Filter Pattern "(.+?)"$/ do |filterName, type, range|
    on AutodiscoveryPage do |page|
        #page.delete_old_filters
        page.add_filter('include','test','172.28.113.160-170') 

        page.select_control_type
        page.check_range_filter_name
    end
end

Then /^no errors should appear for "(.+?)"$/ do |filterName|
    @browser.frame(:id => "myframe").text.include?('Success') 
end


#Scenario: Create Host and Service Group.
Given /^I am on the Host Configuration page$/ do
	visit EventconsolePage
	visit ResourcesPage
    	visit HostconfigurationPage 
end

Given /^I remove all hosts from the hosts groups except localhost$/ do
    @browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Host groups/).when_present.click
    @browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Modify/).when_present.click
    @browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Linux Servers/).when_present.click
    $selectList = @browser.frame(:id => "myframe").frame(:name => "monarch_main").when_present(15).select(:name => "members")
    $selectList.options.map(&:text).each { |element| 
        if element != "localhost"
            $selectList.when_present.select(element)
        end  
    }
    @browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:value, "Remove >>").click
end

Given /^I create a new Host group "(.+?)"$/ do |groupName|
   	@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Host groups/).when_present.click
	@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /New/ ).when_present.click
	@browser.frame(:id => "myframe").frame(:name => "monarch_main").text_field(:name, /name/).when_present.set 'HG2'
	@browser.frame(:id => "myframe").frame(:name => "monarch_main").text_field(:name, /alias/).set 'HG2'
end


Given /^I add the hosts except localhost to the new host group$/ do
    $selectList = @browser.frame(:id => "myframe").frame(:name => "monarch_main").select(:name => /nonmembers/)
		$selectContent = $selectList.options.map(&:text).each { |element| 
        if element == "localhost"
            $host_array << element
            $selectList.select(element)
		end
    }
   @browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:value, /<< Add/).click
end

When /^I "(.*?)" the changes$/ do |arg1|
    @browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, "#{arg1}").click
end

Then /^"(.*?)" changes were "(.*?)" correctly$/ do |arg1, arg2|
    @browser.frame(:id => "myframe").frame(:name => "monarch_main").text.include?("Changes to hostgroup \"#{arg1}\" have been #{arg2}.")
    @browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, "continue").click
end

#Scenario Create Service group
Given /^I am on the Service Configuration page$/ do
	visit ServiceConfigurationPage
end


Given /^I create a new Service Group$/ do
=begin
		@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Service groups/).click
		@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text => /New/, :href => /service_groups&task=new/).when_present.click
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").text_field(:name, /name/).when_present.set 'SG1'
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").text_field(:name, /alias/).set 'SG1'
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, /add/).click
		$selectList = @browser.frame(:id => "myframe").frame(:name => "monarch_main").select(:name => /host/)
		$selectContent = $selectList.options.map(&:text).each { |element| 
        $selectList.select(element)
        }
=end

@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Service groups/).click
		@browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text => /New/, :href => /service_groups&task=new/).when_present.click
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").text_field(:name, /name/).when_present.set 'SG1'
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").text_field(:name, /alias/).set 'SG2'
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, /add/).click
		
		#$selectListnew = @browser.frame(:id => "myframe").frame(:name => "monarch_main").select(:name => /host/)
		
		#$selectContentnew = $selectListnew.options.map(&:text).each { |element| 
        	#$selectListnew.select(element)
		#}
	
		sleep(3)
		#@browser.frame(:id => "myframe").frame(:name => "monarch_main").when_present.select(:name => /services/).select(/local_/)
			
end


Given /^I add the services to the new Service Group$/ do
		sleep(3)
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").select(:name => /host/).option(:text => /localhost/).when_present.select
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").when_present.select(:name => /services/).option(:text => /local_/).when_present.select
		#@browser.frame(:id => "myframe").frame(:name => "monarch_main").when_present.select(:name => /services/).select(/local_/)
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, 'add_services').click
		
end

Given /^service group should be created sucessfully$/ do
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, /save/).click
		@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, /continue/).click
		
end

When /^I delete the service group "(.+?)"$/ do |groupName|
    @browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Service groups/).when_present.click
    @browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Modify/ ).when_present.click
    @browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text, /Smoke_SG1/).when_present.click 
end
	
Then /^the service group should be deleted$/ do
    @browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, "delete").click
	@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, "confirm_delete").click
	@browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, "continue").click
end

#Scenario: Commit changes to Nagios
Given /^I am on Control Configuration page$/ do
	visit ControlPage
end

When /^I commit new objects to Nagios$/ do
    @browser.frame(:id => "myframe").frame(:name => "monarch_left").link(:text => /Commit/).click
    @browser.frame(:id => "myframe").frame(:name => "monarch_main").button(:name, 'commit').when_present.click
    #Optimuscomment: For processing required after commit
    sleep(5)
end

Then /^the commit should be successful$/ do
    @browser.frame(:id => "myframe").text.include?('Success')
end

#Scenario: Apply Applications on Event Console
Given /^I am on the Event Console page$/ do
    visit EventconsolePage
end

When /^I apply the filter System under Applications$/ do
    on EventconsolePage do |page|
        @browser.div(:class => "iceTreeRow", :index => 1).link(:index => 0).when_present.click
        page.application_system_event_element.when_present.click
        page.wait_until do
            page.events_application_types_element.when_present.text == "Events by ApplicationTypes=SYSTEM" 
        end
    end
end

Then /^I should see no errors$/ do
    sleep(5)
    rows = @browser.div(:class => "tableStatus").span(:class => "iceOutFrmt").when_present.text.to_i 
    rows.times do |x|
        output = @browser.span(:id => /_monitorStatus/, :index => x).text
        if output == "OK"
            output.should == "OK"
        elsif output == "WARNING"
            output.should == "WARNING"
        else
            output.should == "WARNING"
        end
    end
end

When /^I apply the filter Nagios under Applications$/ do
    on EventconsolePage do |page|
        @browser.div(:class => "iceTreeRow", :index => 1).link(:index => 0).when_present.click
        page.application_nagios_event_element.when_present.click
        page.wait_until do
            page.events_application_types_element.when_present.text == "Events by ApplicationTypes=NAGIOS"
        end
    end
end

Then /^I should see there are events in this view$/ do
    on EventconsolePage do |page|
        page.number_showing_events_element.when_present.text.to_i.should >= 1
    end
end

#Scenario: Apply Host Groups on Event Console
When /^I apply the filter "(.*?)" under "(.*?)"$/ do |arg1, arg2|
    on EventconsolePage do |page|
        if arg2 == "Host Groups"
            @browser.div(:class => "iceTreeRow", :index => 2).link(:index => 0).when_present.click
        elsif arg2 == "Service Group"
            @browser.div(:class => "iceTreeRow", :index => 3).link(:index => 0).when_present.click
        else
            @browser.div(:class => "iceTreeRow", :index => 4).link(:index => 0).when_present.click
        end
        @browser.link(:text => /#{arg1}/).when_present.click
    end
end

#Scenario: Check no pending state on Status Viewer
Given /^I am on the Status Viewer page$/ do
    visit StatusviewerPage
end

When /^all Hosts and Service states are set up$/ do
    on StatusviewerPage do |page|
        page.wait_until(610) do
            page.state_pending? == false
        end
    end
end

Then /^all states should not be on PENDING$/ do
    on StatusviewerPage do |page|
        page.state_pending?.should == false
    end
end

#Scenario: Check RDD graphs
When /^I select a Host$/ do
    on StatusviewerPage do |page|
        page.select_host("HG1","#{$host_array[0]}", "Linux Servers")
    end
end

Then /^I should see the RRD shown$/ do
    on StatusviewerPage do |page|
        page.performance_filter_element.when_present(10).click
        page.wait_until(10) do
            if !page.host_graph_element.exists?
                page.performance_filter_element.when_present.click
            end
            page.host_graph_element.when_present
        end
    end
end

#Scenario: Check Cacti graphs
When /^I select localhost$/ do
    on StatusviewerPage do |page|
        page.linux_servers_element.when_present.click
        page.localhost_element.when_present.click
    end
end

Then /^I should see that Cacti Graphs shown$/ do
    on StatusviewerPage do |page|
        page.performance_filter_element.when_present(10).click
        page.wait_until(60) do
            #Logged in user
            page.logged_in_user_element.when_present(10).click
            page.logged_in_user_image_element.when_present
            #Memory Usage
            page.memory_usage_element.when_present(10).click
            page.memory_usage_image_element.when_present.click
            #Processes Usage
            page.processes_usage_element.when_present(10).click
            page.processes_usage_image_element.when_present.click
        end
    end
end 


#Scenario Check groundwork default users login
Given /^I am on the Dashboard page$/ do
    #visit DashboardPage
end

Given /^I logout$/ do
    on DashboardPage do |page|
        page.logout
    end
end

When /^I login with (.+) user$/ do |user|
    on LoginPage do |page|
        page.login_user(user,user)
    end
end

Then /^I should see Welcome, (.+) message on dashboard$/ do |user|
    on DashboardPage do |page|
        page.correct_login?(user)
    end
end

Given /^I am on the "(.+)" page$/ do |page|
	if page == 'Event Console'
		  visit EventconsolePage
	elsif page == 'Views'
		visit ViewPage
	elsif page == 'BSM'	
		visit BSMPage
	end
end

And /^I select host "(.+)" on "(.+)" page$/ do |host,page|
	if page == 'Event Console'
		on EventconsolePage do |page|
			page.all_events_element.when_present.click
			page.host_search_element.set host
			page.search_link_element.when_present.click
			@browser.span(:id => /contentPanel:icepnltabset:0:eventTableID:0/, :text => host).when_present.click
		end
	
	elsif page == 'Views'
		on ViewPage do |page|
			page.geooffice_element.when_present.click
			sleep(3)
			page.editmap_element.fire_event 'mouseover'
			page.addicon_element.fire_event 'mouseover'
			page.addhost_element.when_present.click
			page.background_element.when_present(40).click
			page.hostname = host
			page.modify_button_element.when_present.click
			sleep(2)
			@browser.frame(:id => 'myframe').image(:alt => 'host-'+host).when_present.click
			sleep(5)
		end
		
	elsif page == 'BSM'
		@browser.frame(:id => "myframe").link(:text => 'Manage groups').when_present.click
		@browser.frame(:id => "myframe").link(:class => "update").when_present.click
		@browser.frame(:id => "myframe").div(:id => 'yw0').span(:text => 'H: '+host).when_present.click
		@browser.frame(:id => "myframe").div(:class => "form").button(:value => "Add >").when_present.click
		@browser.frame(:id => "myframe").button(:value => "Save").when_present.click
		@browser.frame(:id => "myframe").div(:class => "bsmgroup").table(:class => "bsmtreetable").td(:text => "GroundWork Monitor").when_present.click
		@browser.frame(:id => "myframe").div(:class => "bsmtreeRow").link(:text => host).when_present.click
		@browser.window(:title => 'status').when_present.use
	end
end
	
	
Then /^selected host "(.+)" should be redirected to the Status Viewer page$/ do |host|
	on StatusviewerPage do |page|
		page.status_element.exists?.should == true
	end
		@browser.span(:text => host).exists?.should == true
end

And /^I remove host "(.+)" from "(.+)" page$/ do |host,page|
	if page == 'Event Console'
		visit EventconsolePage
	elsif page == 'Views'
		visit ViewPage  
			on ViewPage do |page|
				page.geooffice_element.when_present.click
				sleep(3)
				@browser.frame(:id => 'myframe').image(:alt => 'host-'+host).when_present.right_click
				page.unlock_element.when_present.click
				sleep(2)
				@browser.frame(:id => 'myframe').image(:alt => 'host-'+host).when_present.right_click
				page.delhostobject_element.when_present.click
				sleep(2)
				@browser.alert.ok
				sleep(5)
			end
	
	elsif page == 'BSM'
		@browser.window(:title => 'Business').when_present.use
		@browser.frame(:id => "myframe").link(:text => 'Manage groups').when_present.click
		@browser.frame(:id => "myframe").link(:class => "update").when_present.click
		@browser.frame(:id => "myframe").div(:id => 'yw2').div(:id => 'selected_members_box').span(:text => 'H: '+host).when_present.click
		@browser.frame(:id => "myframe").div(:class => "form").button(:value => "< Remove").when_present.click
		@browser.frame(:id => "myframe").button(:value => "Save").when_present.click
		@browser.frame(:id => "myframe").div(:class => "bsmtreeRow").link(:text => host).exists?.should == false
	end
end

Given /^the Rest API is to be tested$/ do
end 

When /^the client uses POST for Host "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_success,ex_operation,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.post path, urlPostHostData, :content_type => 'xml'
	xmlData = res.body
	
	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//results/@successful').text
		tag2 = xml_parsed.xpath('//results/@operation').text
	
		if tag1 == ex_success && tag2 == ex_operation
			    puts "\n"
				puts "Response OK\nXML Data Verified"
				puts "--Test Case Passed"
		else 
				puts "\n"
				puts  "Is tag1 == ex_success" 
				puts tag1 == ex_success 
				puts "Is tag2 == ex_operation"
				puts  tag2 == ex_operation
			    puts "Response OK\n XML Data Not Verified"
				puts "--Test Case Failed"
				raise
		end	
	end
	
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end

When /^the client uses GET for Host "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_hostname,ex_status,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.get(path)
	xmlData = res.body
	
 	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//host/@hostName').text
		tag2 = xml_parsed.xpath('//host/@monitorStatus').text
		
		if tag1 == ex_hostname && tag2 == ex_status
			    puts "\n"
				puts "Response OK\nXML Data Verified"
				puts "--Test Case Passed"
		else 
				puts "\n"
				puts  "Is tag1 == ex_hostname" 
				puts tag1 == ex_hostname 
				puts "Is tag2 == ex_status"
				puts  tag2 == ex_status
			    puts "Response OK\n XML Data Not Verified"
				puts "--Test Case Failed"
				raise
		end	
	end
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end

When /^the client uses DELETE for Host "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_success,ex_operation,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.delete path
	xmlData = res.body
	
	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//results/@successful').text
		tag2 = xml_parsed.xpath('//results/@operation').text
		
		if tag1 == ex_success && tag2 == ex_operation
			    puts "\n"
				puts "Response OK\nXML Data Verified"
				puts "--Test Case Passed"
		else 
				puts "\n"
				puts  "Is tag1 == ex_success" 
				puts tag1 == ex_success 
				puts "Is tag2 == ex_operation"
				puts  tag2 == ex_operation
			    puts "Response OK\n XML Data Not Verified"
				puts "--Test Case Failed"
				raise
		end	
	end
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end


When /^the client uses POST for Events "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_success,ex_operation,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.post path, urlPostEventsData, :content_type => 'xml'
	xmlData = res.body
	
	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//results/@successful').text
		tag2 = xml_parsed.xpath('//results/@operation').text
	
		if tag1 == ex_success && tag2 == ex_operation
			    puts "\n"
				puts "Response OK\nXML Data Verified"
				puts "--Test Case Passed"
		else 
				puts "\n"
				puts  "Is tag1 == ex_success" 
				puts tag1 == ex_success 
				puts "Is tag2 == ex_operation"
				puts  tag2 == ex_operation
			    puts "Response OK\n XML Data Not Verified"
				puts "--Test Case Failed"
				raise
		end	
	end
	
rescue Exception => ex
	message = ex.message
	puts message
	if message == ex_message
	puts "--Test Case Passed"
	else 
	raise "Failed"
	puts "--Test Case Failed"
	end
	
	
end
end

When /^the client uses GET for Events "(.*)" then expected xml tags should be "(.*)","(.*)","(.*)","(.*)" and expected "(.*)"$/ do |path,ex_id,ex_hostname,ex_device,ex_status,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.get(path)
	xmlData = res.body
	
 	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//events/event/@id').text
		tag2 = xml_parsed.xpath('//events/event/@host').text
		tag3 = xml_parsed.xpath('//events/event/@device').text
		tag4 = xml_parsed.xpath('//events/event/@operationStatus').text
		
		if tag1 == ex_id && tag2 == ex_hostname && tag3 == ex_device && tag4 == ex_status
			    puts "\n"
				puts "Response OK\nXML Data Verified"
				puts "--Test Case Passed"
		else 
				puts "\n"
				puts  "Is tag1 == ex_id" 
				puts tag1 == ex_id 
				
				puts "Is tag2 == ex_hostname"
				puts  tag2 == ex_hostname
				
				puts "Is tag3 == ex_device"
				puts  tag3 == ex_device
				
				puts "Is tag4 == ex_status"
				puts  tag4 == ex_status
				
			    puts "Response OK\n XML Data Not Verified"
				puts "--Test Case Failed"
				raise
		end	
	end
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end


When /^the client uses PUT for Events "(.*)" and expected xml data "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_success,ex_operation,ex_message|

begin	
    io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.put path, urlPutEventsData , :content_type => 'xml' 
	xmlData = res.body
	
	
	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//results/@successful').text
		tag2 = xml_parsed.xpath('//results/@operation').text
	
		if tag1 == ex_success && tag2 == ex_operation
			    puts "\n"
				puts "Response OK\nXML Data Verified"
				puts "--Test Case Passed"
		else 
				puts "\n"
				puts  "Is tag1 == ex_success" 
				puts tag1 == ex_success 
				
				puts "Is tag2 == ex_operation"
				puts  tag2 == ex_operation
				
			    puts "Response OK\n XML Data Not Verified"
				puts "--Test Case Failed"
				raise
		end	
	end
	
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end

 
When /^the client uses DELETE for Events "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_success,ex_operation,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.delete path
	xmlData = res.body
	
	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//results/@successful')
		tag2 = xml_parsed.xpath('//results/@operation')
		puts tag1
		puts tag2
		if tag1 == ex_success && tag2 == ex_operation
			    puts "\n"
				puts "Response OK\nXML Data Verified"
		else 
				puts "\n"
			    puts "Response OK\nXML Data Not Verified"
		end	
	end
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end


When /^the client uses POST for Hostgroup "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_success,ex_operation,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.post path, urlPostHostGroupData, :content_type => 'xml'
	xmlData = res.body
	
	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//results/@successful').text
		tag2 = xml_parsed.xpath('//results/@operation').text
	
		if tag1 == ex_success && tag2 == ex_operation
			    puts "\n"
				puts "Response OK\nXML Data Verified"
				puts "--Test Case Passed"
		else 
				puts "\n"
				puts  "Is tag1 == ex_success" 
				puts tag1 == ex_success 
				puts "Is tag2 == ex_operation"
				puts  tag2 == ex_operation
			    puts "Response OK\n XML Data Not Verified"
				puts "--Test Case Failed"
				raise
		end	
	end
	
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end


When /^the client uses GET for Hostgroup "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_hostgroup,ex_hostname,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.get(path)
	xmlData = res.body
	
 	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('///hostGroup/@name').text
		tag2 = xml_parsed.xpath('//hosts/host/@hostName').text
			
		if tag1 == ex_hostgroup && tag2 == ex_hostname
			    puts "\n"
				puts "Response OK\nXML Data Verified"
				puts "--Test Case Passed"
		else 
				puts "\n"
				
				puts "Is tag1 == ex_hostgroup"
				puts  tag1 == ex_hostgroup
				
			    puts "Response OK\n XML Data Not Verified"
				puts "--Test Case Failed"
				raise
		end	
	end
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end

When /^the client uses DELETE for Hostgroup "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_success,ex_operation,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.delete path
	xmlData = res.body
	
	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//results/@successful')
		tag2 = xml_parsed.xpath('//results/@operation')
		puts tag1
		puts tag2
		if tag1 == ex_success && tag2 == ex_operation
			    puts "\n"
				puts "Response OK\nXML Data Verified"
		else 
				puts "\n"
			    puts "Response OK\nXML Data Not Verified"
		end	
	end
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end




When /^the client uses POST for Services "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_success,ex_operation,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.post path, urlPostServicesData, :content_type => 'xml'
	xmlData = res.body
	
	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//results/@successful').text
		tag2 = xml_parsed.xpath('//results/@operation').text
	
		if tag1 == ex_success && tag2 == ex_operation
			    puts "\n"
				puts "Response OK\nXML Data Verified"
				puts "--Test Case Passed"
		else 
				puts "\n"
				puts  "Is tag1 == ex_success" 
				puts tag1 == ex_success 
				puts "Is tag2 == ex_operation"
				puts  tag2 == ex_operation
			    puts "Response OK\n XML Data Not Verified"
				puts "--Test Case Failed"
				raise
		end	
	end
	
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end


When /^the client uses GET for Services "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_hostname,ex_status,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.get(path)
	xmlData = res.body
	
 	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//service/@hostName').text
		tag2 = xml_parsed.xpath('//service/@monitorStatus').text
		
		if tag1 == ex_hostname && tag2 == ex_status 
			    puts "\n"
				puts "Response OK\nXML Data Verified"
				puts "--Test Case Passed"
		else 
				puts "\n"
				
				puts "Is tag1 == ex_hostname"
				puts  tag1 == ex_hostname
				
				puts "Is tag2 == ex_status"
				puts  tag2 == ex_status
				
			    puts "Response OK\n XML Data Not Verified"
				puts "--Test Case Failed"
				raise
		end	
	end
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end

When /^the client uses DELETE for Services "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_success,ex_operation,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.delete path
	xmlData = res.body
	
	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//results/@successful')
		tag2 = xml_parsed.xpath('//results/@operation')
		
		if tag1 == ex_success && tag2 == ex_operation
			    puts "\n"
				puts "Response OK\nXML Data Verified"
		else 
				puts "\n"
			    puts "Response OK\nXML Data Not Verified"
		end	
	end
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end


When /^the client uses POST for Devices "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_success,ex_operation,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.post path, urlPostDevicesData, :content_type => 'xml'
	xmlData = res.body
	
	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//results/@successful').text
		tag2 = xml_parsed.xpath('//results/@operation').text
	
		if tag1 == ex_success && tag2 == ex_operation
			    puts "\n"
				puts "Response OK\nXML Data Verified"
				puts "--Test Case Passed"
		else 
				puts "\n"
				puts  "Is tag1 == ex_success" 
				puts tag1 == ex_success 
				puts "Is tag2 == ex_operation"
				puts  tag2 == ex_operation
			    puts "Response OK\n XML Data Not Verified"
				puts "--Test Case Failed"
				raise
		end	
	end
	
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end


When /^the client uses GET for Devices "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_displayname,ex_identification,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.get(path)
	xmlData = res.body
	
 	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//device/@displayName').text
		tag2 = xml_parsed.xpath('//device/@identification').text
		
		
		if tag1 == ex_displayname && tag2 == ex_identification 
			    puts "\n"
				puts "Response OK\nXML Data Verified"
				puts "--Test Case Passed"
		else 
				puts "\n"
				
				puts "Is tag1 == ex_displayname"
				puts  tag1 == ex_displayname
				
				puts "Is tag2 == ex_identification"
				puts  tag2 == ex_identification
				
			    puts "Response OK\n XML Data Not Verified"
				puts "--Test Case Failed"
				raise
		end	
	end
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end

When /^the client uses DELETE for Devices "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_success,ex_operation,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.delete path
	xmlData = res.body
	
	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//results/@successful')
		tag2 = xml_parsed.xpath('//results/@operation')
		
		if tag1 == ex_success && tag2 == ex_operation
			    puts "\n"
				puts "Response OK\nXML Data Verified"
		else 
				puts "\n"
			    puts "Response OK\nXML Data Not Verified"
		end	
	end
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end




When /^the client uses POST for Categories "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_success,ex_operation,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.post path, urlPostCategoriesData, :content_type => 'xml'
	xmlData = res.body
	
	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//results/@successful').text
		tag2 = xml_parsed.xpath('//results/@operation').text
	
		if tag1 == ex_success && tag2 == ex_operation
			    puts "\n"
				puts "Response OK\nXML Data Verified"
				puts "--Test Case Passed"
		else 
				puts "\n"
				puts  "Is tag1 == ex_success" 
				puts tag1 == ex_success 
				puts "Is tag2 == ex_operation"
				puts  tag2 == ex_operation
			    puts "Response OK\n XML Data Not Verified"
				puts "--Test Case Failed"
				raise
		end	
	end
	
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end


When /^the client uses GET for Categories "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_hostname,ex_status,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.get(path)
	xmlData = res.body
	
 	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//service/@monitorStatus').text
		tag2 = xml_parsed.xpath('//service/@hostName').text
		puts tag1
		puts tag2
		if tag1 == ex_hostname && tag2 == ex_status 
			    puts "\n"
				puts "Response OK\nXML Data Verified"
				puts "--Test Case Passed"
		else 
				puts "\n"
				
				puts "Is tag1 == ex_hostname"
				puts  tag1 == ex_hostname
				
				puts "Is tag2 == ex_status"
				puts  tag2 == ex_status
				
			    puts "Response OK\n XML Data Not Verified"
				puts "--Test Case Failed"
				raise
		end	
	end
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end

When /^the client uses DELETE for Categories "(.*)" then expected xml tags should be "(.*)","(.*)" and expected "(.*)"$/ do |path,ex_success,ex_operation,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.delete path
	xmlData = res.body
	
	if statusCode == "200"
		xml_parsed = Nokogiri.XML(xmlData)
		tag1 = xml_parsed.xpath('//results/@successful')
		tag2 = xml_parsed.xpath('//results/@operation')
	
		if tag1 == ex_success && tag2 == ex_operation
			    puts "\n"
				puts "Response OK\nXML Data Verified"
		else 
				puts "\n"
			    puts "Response OK\nXML Data Not Verified"
		end	
	end
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end


When /^the client uses GET for Graphs "(.*)" then expected xml tags should be "(.*)"$/ do |path,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.get(path)
	xmlData = res.body
	
 	if statusCode == "200"
		
				puts "--Test Case Passed"
		else 
				puts "--Test Case Failed"
				raise
		end	
		
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end


When /^the client uses GET for Metadata "(.*)" then expected xml tag should be "(.*)"$/ do |path,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.get(path)
	xmlData = res.body
	
 	if statusCode == "200"
		
				puts "Response OK"
				puts "--Test Case Passed"
		else 				
			  
				puts "--Test Case Failed"
				raise
		end	
	
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end


When /^the client uses GET for Statistics "(.*)" then expected xml tag should be "(.*)"$/ do |path,ex_message|

begin
	io = open(path) 
	status = io.status	
	statusCode = status[0]
	res = RestClient.get(path)
	xmlData = res.body
	
 	if statusCode == "200"
		
				puts "Response OK"
				puts "--Test Case Passed"
		else 				
			  
				puts "--Test Case Failed"
				raise
		end	
	
rescue Exception => ex
	message = ex.message
	if message == ex_message
	puts "--Test Case Passed"
	else
	puts "--Test Case Failed"
	raise
	end
end
end
