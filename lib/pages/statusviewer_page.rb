class StatusviewerPage
    include PageObject

    direct_url BASE_URL + "status"

    span :pending_host_groups_statics, :id =>'frmNV:tblHostGroupStatistics:3:outputtxtTotalValue'
    span :pending_host_statics, :id =>'frmNV:tblhostStatistics:3:outputtxtHostTotalValue'

    span :pending_service_groups_statics, :id =>'frmNV:tblServiceGroupStatistics:4:outputtxtTotalValue'
    span :pending_service_statics, :id =>'frmNV:tblServiceStatistics:4:outputtxtServiceTotalValue'

    span :total_services, :id => "frmNV:tblServiceStatistics:outtxtTotalServiceCount"
    span :total_hosts, :id => "frmNV:tblhostStatistics:outputtxtTotalHostCount"

    span :performance_filter, :text =>'Host Availability & Performance Measurement'
    image :host_graph, :id => 'HVform:j_id957'

    span :linux_servers, :text => /Linux Server/ 
    span :localhost, :text => 'localhost'

    span :logged_in_user, :id =>'HVform:tblperfmeasurement_Portlet:1:PMpnlCollapsible_outtxt'
    image :logged_in_user_image, :id =>'HVform:tblperfmeasurement_Portlet:1:j_id991'

    span :memory_usage, :id =>'HVform:tblperfmeasurement_Portlet:2:PMpnlCollapsible_outtxt'
    image :memory_usage_image, :id =>'HVform:tblperfmeasurement_Portlet:2:j_id991'

    span :processes_usage, :id =>'HVform:tblperfmeasurement_Portlet:3:PMpnlCollapsible_outtxt'
    image :processes_usage_image, :id =>'HVform:tblperfmeasurement_Portlet:3:j_id991'

    span :custom_group, :class => "iceOutTxt", :text => "CG1"

    link :hosts_link, :id => "frmTree:pnlTbSet:0.0"
    link :services_link, :id => "frmTree:pnlTbSet:0.1"
    link :open_servicegroup, :id => "frmTree:pnlTbSet:0:treeSrvc:0"
	link :local_cpu_httpd, :text => "local_cpu_httpd"
    #link :icmp_ping_alive, :text => "icmp_ping_alive"

    link :check_results, :text => "Check Results"
    link :passive_result, :text => "Submit Passive Check Result"

    text_field :check_output, :id => "SVform:actionsPortlet_txtCheckOutputValue"
    text_field :performance_data, :id => "SVform:actionsPortlet_txtPerformanceDataValue"
    select_list :check_results_list, :id => "SVform:actionsPortlet_menuCheckResult"
    button :submit_button, :id => "SVform:actionsPortlet_btnSubmit"

    link :search_tab, :id => "frmTree:pnlTbSet:0.2"
    text_field :search_box, :id => "frmTree:pnlTbSet:0:STtxtSearchQuery"
    button :search_button, :value => "Go"
    span :search_count, :id => "frmTree:pnlTbSet:0:STtxtSearchCount"

    link :hosts_all_link, :id => "frmTree:pnlTbSet:0:hstTree:0"
    link :group_all_link, :id => "frmTree:pnlTbSet:0:treeSrvc:0"

    div :page_title, :class => "BreadcumbsInfoBar ClearFix"
    span :page_text, :id => "frmNV:HostGrpStatusPortlet_TxtHstGpStats"

	link :status, :text => "Status"
	span :host_status, :text => "BSM:Business Objects"
	span :hostname, :text => "baden"
=begin
	in_frame(:id => /history-frame/) do |frame|
	
		link :esx_bernina, :id => /frmTree:pnlTbSet:0:hstTree/,:frame => frame
		link :esx_morges, :id => /frmTree:pnlTbSet:0:hstTree:n-4:lnkNdClick/, :frame => frame
		link :esx_thun, :id => /frmTree:pnlTbSet:0:hstTree:n-5:lnkNdClick/, :frame => frame
		link :esx_wil, :id => /frmTree:pnlTbSet:0:hstTree:n-6:lnkNdClick/, :frame => frame
		link :esx_zurich, :id => /frmTree:pnlTbSet:0:hstTree:n-7:lnkNdClick/, :frame => frame
		link :esx_vssvermont, :id => /frmTree:pnlTbSet:0:hstTree:n-10:lnkNdClick/, :frame => frame
		span :rhev_vm, :text => /RHEV-H:Inactive VMs/, :frame => frame
		span :rhev_m, :text => /RHEV-M:eng-rhev-m-1.groundwork.groundworkopensource.com/, :frame => frame
	end
=end
	
	link :zurich, :id => "frmTree:pnlTbSet:0:hstTree:7"
	span :linux_host_machine, :id => /frmTree:pnlTbSet:0:hstTree/, :text => /linuxchildhost1/
	span :cpu_usage, :id => /frmTree:pnlTbSet:0:hstTree/, :text => /summary.quickStats.overallCpuUsage/
	link :vss_vermont, :id => "frmTree:pnlTbSet:0:hstTree:8"
	link :vss_zurich, :id => "frmTree:pnlTbSet:0:hstTree:8-4"
	link :zurich, :id => "frmTree:pnlTbSet:0:hstTree:7"
	span :cpu_uptime, :id => /frmTree:pnlTbSet:0:hstTree/, :text => /summary.quickStats.uptimeSeconds/
	select :filter, :id => /frmTree:pnlTbSet:0:STmenuSortSelect/
	link :net_view, :id => /frmTree:pnlTbSet:0:hstTree/, :text => /NET:/
	link :pool_view, :id => /frmTree:pnlTbSet:0:hstTree/, :text => /POOL:/
	link :storage_view, :id => /frmTree:pnlTbSet:0:hstTree/, :text => /STOR:/
	
	
	
	link :esx_bernina,:id => /frmTree:pnlTbSet:0:hstTree/, :text => /ESX:bernina/
	link :esx_morges,:id => /frmTree:pnlTbSet:0:hstTree/, :text => /ESX:morges/
	link :esx_thun,:id => /frmTree:pnlTbSet:0:hstTree/, :text => /ESX:thun/
	link :esx_wil,:id => /frmTree:pnlTbSet:0:hstTree/, :text => /ESX:wil/
	link :esx_zurich,:id => /frmTree:pnlTbSet:0:hstTree/, :text => /ESX:zurich/
	link :esx_vssvermont,:id => /frmTree:pnlTbSet:0:hstTree/, :text => /VSS:vermont/
	link :rhev_vm, :id => /frmTree:pnlTbSet:0:hstTree/, :text => /RHEV-H:/
	link :rhev_m, :id => /frmTree:pnlTbSet:0:hstTree/, :text => /RHEV-M:eng-rhev-m-1.groundwork.groundworkopensource.com/
	#span :rhev_vm, :text => /RHEV-H:Inactive VMs/
	#span :rhev_m, :text => /RHEV-M:eng-rhev-m-1.groundwork.groundworkopensource.com/
	
	
	
	
	
    def state_pending?
        self.pending_host_groups_statics_element.when_present.text != '0' or
        self.pending_host_statics_element.when_present.text != '0' or
        self.pending_service_groups_statics_element.when_present.text != '0' or
        self.pending_service_statics_element.when_present.text != '0'
    end

    def select_host(hostGroup, host, patch_host)
        @browser.span(:text => "#{hostGroup}").when_present.click
        sleep(3)
        @browser.span(:text => "#{patch_host}").when_present.click
        if host == ""
            @browser.span(:id => "frmTree:pnlTbSet:0:hstTree:n-0-3:TxtNdClick").when_present.click
        else
            @browser.span(:text => "#{host}").when_present.click
        end
    end

    def get_host(index)
        tree = @browser.div(:id => "frmTree:pnlTbSet:0:treeSrvc-d-0-c").when_present
        element = tree.div(:class => "iceTreeRow", :index => index)
        element.text[/\(.*?\)/].gsub('(','').gsub(')','')
    end

    def submit_check_results(state)
        self.check_results_element.when_present.click
        sleep(2)
        if self.passive_result_element.exists?
            self.passive_result_element.when_present.click
        else
            self.check_results_element.when_present.click
            self.passive_result_element.when_present.click
        end
        self.check_output_element.when_present.click
        self.check_output = state
        self.performance_data = state
        self.check_results_list = state
    end

    def search_for_host(host)
        self.search_tab_element.when_present.click
        self.wait_until(10) do
            self.search_box_element.exists?
        end
        self.search_box = host
        sleep(2)
        self.search_button
        sleep(2)
        results = self.search_count
        results.split(" ")[0].to_i
    end

    def results_not_found(host)
        self.search_tab_element.when_present.click
        self.wait_until(10) do
            self.search_box_element.exists?
        end
        self.search_box = host
        sleep(1)
        self.search_button
        sleep(2)
        @browser.text.include? "No results found"

    end

	def status_verify(view)
		if view == "Storage View"
			self.storage_view_element.exists?.should == true
			self.storage_view_element.when_present.click
			sleep(5)
		
		elsif view == "Network View"
			self.net_view_element.exists?.should == true
			self.net_view_element.when_present.click
			sleep(5)
		elsif view == "Resource Pool"
			self.pool_view_element.exists?.should == true
			self.pool_view_element.when_present.click
			sleep(5)
		end
	end
	
	def selecthost(hostgroup, host)
		@browser.span(:text => hostgroup).when_present.click
        sleep(3)
        @browser.span(:text => host).when_present.click
		sleep(2)
	end
end
