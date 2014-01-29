Given /^I specify subnet filter pattern "(.+?)" of type "(.+?)" and range "(.+?)"$/ do |filterName, type, range|
    on AutodiscoveryPage do |page|        
        page.add_filter(type, filterName, range)
        page.select_control_type
    end
end


When /^I launch an Auto Discovery for stress testing$/ do
    on AutodiscoveryPage do |page|
        page.launch_autodiscovery
        page.wait_until(3000) do
            page.scan_status_element.text.include?('All records processed')
        end
    end
end

Then /^hosts should be discovered correctly$/ do
    on AutodiscoveryPage do |page|
        array_increments_by?(1,page.range_discover).should == true
    end
end

Then /^hosts of "(.+?)" for the filter "(.+?)" should appear on status viewer$/ do |subnet, filterName|
    on AutodiscoveryPage do |page|
		$hosts = page.hosts_discover
        page.commit_results     
    end
	#Optimuscomment: Sleep required for newely discovered hosts to be visible in Status viewer
	sleep(10)
    visit StatusviewerPage
    on StatusviewerPage do |page|
        page.total_hosts.to_f.should >= $hosts.count
    end
	visit AutodiscoveryPage
	on AutodiscoveryPage do |page|
        page.delete_filter(filterName)
	end
	visit HostsConfigurationPage
    on HostsConfigurationPage do |page|
        page.remove_all_host(subnet)
	end	
end