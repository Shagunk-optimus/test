When /^I open hosts all filter$/ do
    on StatusviewerPage do |page|
        page.hosts_all_link_element.when_present.click
    end
end

Then /^I should see all the hosts$/ do
    sleep(2)
    @browser.div(:id => "frmTree:pnlTbSet:0:hstTree-d-0-c").when_present.divs.to_a.count.should == 10
end

When /^I open group all filter$/ do
    on StatusviewerPage do |page|
        page.services_link_element.when_present.click
        page.group_all_link_element.when_present.click
    end
    $mapsInfo = Array.new
    $mapsInfo << NagvisMapInfo.new("hostsgroups")
    $mapsInfo << NagvisMapInfo.new("servicegroups")
    $mapsInfo << NagvisMapInfo.new("submaps")
    $mapsInfo << NagvisMapInfo.new("Hosts_UP")
end

Then /^I should see all the services$/ do
    sleep(2)
    service_number = @browser.div(:id => "frmTree:pnlTbSet:0:treeSrvc-d-0-c").divs.to_a.count / 2
    service_number.should == 10
end

Given /^I am on the Nagvis View Page$/ do
    visit NagvisViewsPage
	@browser.driver.manage.window.maximize
	#Need to remove these declarations
	$mapsInfo = Array.new
    	$mapsInfo << NagvisMapInfo.new("hostsgroups")
	$mapsInfo << NagvisMapInfo.new("servicegroups")
	$mapsInfo << NagvisMapInfo.new("submaps")
	$mapsInfo << NagvisMapInfo.new("Hosts_UP")
end

When /^I hover the hostsGroup map$/ do
    hosts_group_map_info = @browser.frame(:id => "myframe").link(:id => "map-3-icon")
    hosts_group_map_info.hover
end

When /^I hover the "(.*?)"$/ do |map_name|
    on NagvisViewsPage do |page|
        $map = page.obtainMap(map_name)
        $map.hover
    end
end

Then /^the "(.*?)" summary state should be "(.*?)"$/ do |map_name, state|
    on NagvisViewsPage do |page|
        index = page.map_index["#{map_name}"]
        page.validateState(state, index).should == true
    end
end


Then /^the "(.*?)" summary output should match$/ do |map_name|
    on NagvisViewsPage do |page|
        index = page.map_index["#{map_name}"]
        output = $mapsInfo[index].output
        page.validateOutput(output, index).should == true
    end
end

Then /^the "(.*?)" map child information should match$/ do |map_name|
    on NagvisViewsPage do |page|
        index_map = page.map_index["#{map_name}"]
        children = $mapsInfo[index_map].children
        page.validateChildren(children,index_map)
    end
end

Given /^I click on "(.*?)" map$/ do |map_name|
    on NagvisViewsPage do |page|
        map = page.obtainMap(map_name)
        map.when_present.click
    end
end

When /^I hover "(.*?)" icon on "(.*?)" map$/ do |host_group_name,map_name|
    on NagvisViewsPage do |page|
        id = "#{map_name}-#{host_group_name}"
        $icon = page.obtainIcon(id)
        $icon.hover
    end
end

Then /^the Host "(.*?)" state should be "(.*?)"$/ do |host_group_name, state|
    on NagvisViewsPage do |page|
        index = page.hostgroup_index["#{host_group_name}"]
        page.validateState(state, index).should == true
    end
end

Then /^the Host "(.*?)" output should match$/ do |host_group_name|
    on NagvisViewsPage do |page|
        index = page.hostgroup_index["#{host_group_name}"]
        output = $mapsInfo[0].group["#{host_group_name}"]["output"]
        page.validateOutput( output, index).should == true
    end
end

Then /^the Host "(.*?)" child information should match$/ do |host_group_name|
    on NagvisViewsPage do |page|
        index = page.hostgroup_index["#{host_group_name}"]
        children = $mapsInfo[0].group["#{host_group_name}"]["children"]
        page.validateChildren(children,index)
    end
end

Then /^the Service "(.*?)" state should be "(.*?)"$/ do |service_group_name, state|
    on NagvisViewsPage do |page|
        index = page.servicegroup_index["#{service_group_name}"]
        page.validateState(state, index).should == true
    end
end

Then /^the Service "(.*?)" output should match$/ do |service_group_name|
    on NagvisViewsPage do |page|
        index = page.servicegroup_index["#{service_group_name}"]
        output = $mapsInfo[1].group["#{service_group_name}"]["output"]
        page.validateOutput( output, index).should == true
    end
end

Then /^the Service "(.*?)" child information should match$/ do |service_group_name|
    on NagvisViewsPage do |page|
        index = page.servicegroup_index["#{service_group_name}"]
        children = $mapsInfo[1].group["#{service_group_name}"]["children"]
        page.validateChildren(children,index)
    end
end

Then /^the Map "(.*?)" state should be "(.*?)"$/ do |map_name, state|
    on NagvisViewsPage do |page|
        index = page.mapname_index["#{map_name}"]
        page.validateState(state, index).should == true
    end
end

Then /^the Map "(.*?)" output should match$/ do |map_name|
    on NagvisViewsPage do |page|
        index = page.mapname_index["#{map_name}"]
        output = $mapsInfo[2].group["#{map_name}"]["output"]
        page.validateOutput( output, index).should == true
    end
end

Then /^the Map "(.*?)" child information should match$/ do |map_name|
    on NagvisViewsPage do |page|
        index = page.mapname_index["#{map_name}"]
        children = $mapsInfo[2].group["#{map_name}"]["children"]
        page.validateChildren(children,index)
    end
end

Given /^I select the map "(.*?)"$/ do |map_name|
    on NagvisViewsPage do |page|
        map = page.obtainIcon("map-#{map_name}")
        map.click
    end
end

Then /^the Host Up "(.*?)" state should be "(.*?)"$/ do |host_name, state|
    on NagvisViewsPage do |page|
        index = page.hostup_index["#{host_name}"]
        page.validateState(state, index).should == true
    end
end

Then /^the Host Up "(.*?)" output should match$/ do |host_name|
    on NagvisViewsPage do |page|
        index = page.hostup_index["#{host_name}"]
        output = $mapsInfo[3].group["#{host_name}"]["output"]
        page.validateOutput( output, index).should == true
    end
end

Then /^the Host Up "(.*?)" child information should match$/ do |host_name|
    on NagvisViewsPage do |page|
        index = page.hostup_index["#{host_name}"]
        children = $mapsInfo[3].group["#{host_name}"]["children"]
        page.validateChildren(children,index)
    end
end

Then(/^the Host Up "(.*?)" "(.*?)" should match$/) do |host_name, attribute|
    on NagvisViewsPage do |page|
        index = page.hostup_index[host_name]
        json_attribute = $mapsInfo[3].group[host_name][attribute]
        page.validateAttribute(attribute, json_attribute, index).should == true
    end
end

#OptimusComment: Moved step definitions from Bug folder

Given /^I create a new map$/ do
    on AdministrationViewPage do |page|
        page.map= 'GadgetMap'
        page.map_image_list='dc_floorplan.png'
        page.submit_button_element.when_present.click
        @browser.frame(:id => "myframe").table(:id, "messageBox").when_present.wait_while_present
    end
end

When /^I add a gadget raw number icon for service$/ do
    on AdministrationViewPage do |page|
      @browser.frame(:id => "myframe").dt(:id => "map-ddheader").when_present.hover
      page.map_addicon_ddheader_element.when_present.hover
      page.service_link_element.when_present.click
      page.background_image_element.when_present.click
      page.hostname_list="localhost"
      page.service_description_list="local_cpu_nagios"
      page.x_text_field='200'
      page.y_text_field='200'
      page.view_type_list="gadget"
      page.gadget_url_list="rawNumbers.php"
      page.submit_button
      @browser.frame(:id => "myframe").table(:id, "messageBox").when_present.wait_while_present
    end
end

When /^I add a gadget chart pie icon for service$/ do
    on AdministrationViewPage do |page|
      @browser.frame(:id => "myframe").dt(:id => "map-ddheader").when_present.hover
      page.map_addicon_ddheader_element.when_present.hover
      page.service_link_element.when_present.click
      page.background_image_element.when_present.click
      page.hostname_list="localhost"
      page.service_description_list="local_mem_nagios"
      page.x_text_field='200'
      page.y_text_field='320'
      page.view_type_list="gadget"
      page.gadget_url_list="pChartPieChart.php"
      page.submit_button
      @browser.frame(:id => "myframe").table(:id, "messageBox").when_present.wait_while_present
    end
end

When /^I add a gadget bar icon for service$/ do
    on AdministrationViewPage do |page|
      @browser.frame(:id => "myframe").dt(:id => "map-ddheader").when_present.hover
      page.map_addicon_ddheader_element.when_present.hover
      page.service_link_element.when_present.click
      page.background_image_element.when_present.click
      page.hostname_list="localhost"
      page.service_description_list="local_nagios_latency"
      page.x_text_field='200'
      page.y_text_field='400'
      page.view_type_list="gadget"
      page.gadget_url_list="std_bar.php"
      page.submit_button
      @browser.frame(:id => "myframe").table(:id, "messageBox").when_present.wait_while_present
    end
end

When /^I add a gadget thermo icon for service$/ do
    on AdministrationViewPage do |page|
      @browser.frame(:id => "myframe").dt(:id => "map-ddheader").when_present.hover
      page.map_addicon_ddheader_element.when_present.hover
      page.service_link_element.when_present.click
      page.background_image_element.when_present.click
      page.hostname_list="localhost"
      page.service_description_list="local_disk_root"
      page.x_text_field='70'
      page.y_text_field='100'
      page.view_type_list="gadget"
      page.gadget_url_list="thermo.php"
      page.submit_button
      @browser.frame(:id => "myframe").table(:id, "messageBox").when_present.wait_while_present
    end
end

Then /^I should be able to see the map with the (\d+) gadgets$/ do |arg1|
    on NagvisViewsPage do |page|
        page.test_map_image_element.exists?
        page.gadget_raw_number_image_element.exists?
	page.gadget_thermo_image_element.exists?
	page.gadget_bar_image_element.exists?
	page.gadget_chart_pie_image_element.exists?
    end
end


