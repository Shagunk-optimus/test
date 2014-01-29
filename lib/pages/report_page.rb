class ReportsPage
    include PageObject

    direct_url BASE_URL + "reports"

    span :page_title, :class => "portlet-titlebar-title", :index => 2

    @@subtab_title = { "Performance View" => "Performance Viewer", "Alerts" => "Alerts Report", "Notifications" => "Notifications Report", "Outages" => "Outages Report", "SLA Management" => "SLA Management"}
    #@@subtab_text = { "Performance View" => "Performance", "Alerts" => "Show Top Alarms by", "Notifications" => "Show Top Notifications by", "Outages" => "Show Top Measurements by", "SLA Management" => "Service level Management"}
    @@subtab_text = { "Performance View" => "Performance Views", "Alerts" => "Show Top Alarms by", "Notifications" => "Show Top Notifications by", "Outages" => "Show Top Measurements by"}
	
	

	in_frame(:id => 'birtViewer') do |frame|
		select :host, :id => 'HostName_selection', :frame => frame
		select :host_service_state, :id => 'hostName_selection', :frame => frame
		select :service, :id => 'serviceName_selection', :frame => frame
		select :hostgroup, :id => 'HostGroupName_selection', :frame => frame
		select :hostgroup_events, :id => 'Host Group_selection', :frame => frame
		select :host_events, :id => 'Host Name_selection', :frame => frame
		select :host_perf, :id => 'Host_selection', :frame => frame
		select :perf_indicator, :id => 'PerformanceIndicator_selection', :frame => frame
		select :unit, :id => 'Unit_selection', :frame => frame
		select :perf_name, :id => 'PerformanceName_selection', :frame => frame
		select :host_right_axis, :id => 'HostName_Right_selection', :frame => frame
		select :unit_right_axis, :id => 'Unit_Right_selection', :frame => frame
		select :perf_name_right_axis, :id => 'PerformanceName_Right_selection', :frame => frame
		select :hostgroup_perf, :id => 'HostGroup_selection', :frame => frame
		select :hostgroup_name, :id => 'HostGroupName_selection', :frame => frame
		select :hostgroup_name_right_axis, :id => 'HostGroupName_Right_selection', :frame => frame
		
		
		text_field :from_date, :id => 'FromDate', :frame => frame
		text_field :to_date, :id => 'ToDate', :frame => frame
		text_field :start_date, :id => 'DateStart', :frame => frame
		text_field :end_date, :id => 'DateEnd', :frame => frame
	end

	
	link :availability_reports, :id => /reportTreePortlet_frmTree:reportTreePortlet_reportTree:0/
	link :event_reports, :id => /reportTreePortlet_frmTree:reportTreePortlet_reportTree:1/
	link :performance_reports, :id => /reportTreePortlet_frmTree:reportTreePortlet_reportTree:2/
	link :status_reports, :id => /reportTreePortlet_frmTree:reportTreePortlet_reportTree:3/
	
	
	def select_report(report)
	
		if report == 'host availability' || report == 'host state transitions' || report == 'hostgroup availability' || report == 'service state transitions'
			if self.availability_reports_element.image(:src =>/tree_nav_middle_close.gif/).exists?
				self.availability_reports_element.image(:src =>/tree_nav_middle_close.gif/).when_present.click
				self.availability_reports_element.when_present.click
			else
				self.availability_reports_element.when_present.click
			end
			@browser.span(:text => report).when_present.click
			sleep(5)
	
		elsif report == 'event history' || report == 'event history overview'
			if self.event_reports_element.image(:src =>/tree_nav_middle_close.gif/).exists?
				self.event_reports_element.image(:src =>/tree_nav_middle_close.gif/).when_present.click
				self.event_reports_element.when_present.click
			else
				self.event_reports_element.when_present.click
			end
			
		elsif report == 'epr host' || report == 'epr host multi variable' || report == 'epr hostgroup' || report == 'epr hostgroup multi variable' || report == 'epr hostgroup topfive'
			if self.performance_reports_element.image(:src =>/tree_nav_middle_close.gif/).exists?
				self.performance_reports_element.image(:src =>/tree_nav_middle_close.gif/).when_present.click
				self.performance_reports_element.when_present.click
			else
				self.performance_reports_element.when_present.click
			end
		
		elsif report == 'host status'
			if self.status_reports_element.image(:src =>/tree_nav_middle_close.gif/).exists?
				self.status_reports_element.image(:src =>/tree_nav_middle_close.gif/).when_present.click
				self.status_reports_element.when_present.click
			else
				self.status_reports_element.when_present.click
			end
		
		elsif report == 'hostgroup status'
			if self.status_reports_element.image(:src =>/tree_nav_middle_close.gif/).exists?
				self.status_reports_element.image(:src =>/tree_nav_middle_close.gif/).when_present.click
				self.status_reports_element.when_present.click
			else
				self.status_reports_element.when_present.click
			end
		end
		@browser.span(:text => report).when_present.click
		@browser.frame(:id => 'birtViewer').div(:id => 'progressBar').table(:id => 'birtviewer_progressbar').wait_while_present
	end
	
	
	def open_report(report)
		if report == 'host availability' || report == 'host status'
			self.host_element.select('localhost')
					
		elsif report == 'hostgroup availability' || report == 'hostgroup status'
			self.hostgroup_element.select('Linux Servers')
			
		elsif report == 'host state transitions'
			@browser.frame(:id => 'birtViewer').div(:class => 'birtviewer_parameter_dialog').select(:id => 'hostName_selection').select('localhost')

		elsif report == 'service state transitions'
			@browser.frame(:id => 'birtViewer').div(:class => 'birtviewer_parameter_dialog').select(:id => 'hostName_selection').select('localhost')
			self.service_element.select('tcp_http')
			
		elsif report == 'event history'
			self.from_date_element.clear
			self.from_date_element.set '2014-01-01 10:00:00'
			self.to_date_element.clear
			self.to_date_element.set '2014-01-31 10:00:00'
			self.hostgroup_events_element.select('Linux Servers')
			sleep(3)
			self.host_events_element.select('ALL')
			
		elsif report == 'epr host'
			self.host_perf_element.select('localhost')
			self.perf_indicator_element.when_present.select('local_memory_pct')
					
		elsif report == 'epr host multi variable'
			self.host_element.select('localhost')
			self.unit_element.when_present.select('http')
			self.perf_name_element.when_present.select('tcp_http_size')
			self.host_right_axis_element.when_present.select('localhost')
			self.unit_right_axis_element.when_present.select('http')
			self.perf_name_right_axis_element.when_present.select('tcp_http_size')	
			
		elsif report == 'epr hostgroup'
			self.hostgroup_perf_element.select('Linux Servers')
			self.perf_indicator_element.when_present.select('local_swap_swap')		
		
		elsif report == 'epr hostgroup multi variable'
			self.hostgroup_name_element.select('Linux Servers')
			self.unit_element.when_present.select('sec')
			self.perf_name_element.when_present.select('tcp_http_time')
			self.hostgroup_name_right_axis.when_present.select('Linux Servers')
			self.unit_right_axis_element.when_present.select('ms')
			self.perf_name_right_axis_element.when_present.select('tcp_gw_listener_time')
			
		elsif report == 'epr hostgroup topfive'
			self.hostgroup_perf_element.select('Linux Servers')
			self.perf_indicator_element.when_present.select('tcp_nsca_time')
		end
		@browser.frame(:id => 'birtViewer').div(:id => 'parameterDialogokButton').button(:title => 'OK').when_present.click
		sleep(10)
	end
	
	def verify_report(report)
		if report == 'host availability'
			@browser.frame(:id => 'birtViewer').div(:id => 'AUTOGENBOOKMARK_4').text.include? ('Host Availability Report')
			@browser.frame(:id => 'birtViewer').div(:id => 'AUTOGENBOOKMARK_9').text.include? ('Host Service Availability')
		
		elsif report == 'host state transitions'
			@browser.frame(:id => 'birtViewer').div(:id => 'AUTOGENBOOKMARK_4').text.include? ('GroundWork Host State Transitions Report')
		
		elsif report == 'hostgroup availability'
			@browser.frame(:id => 'birtViewer').div(:id => 'AUTOGENBOOKMARK_4').text.include? ('HostGroup Availability for Host and Services')
			
		elsif report == 'service state transitions'
			@browser.frame(:id => 'birtViewer').div(:id => 'AUTOGENBOOKMARK_4').text.include? ('GroundWork Service State Transitions Report')
			
		elsif report == 'host status'
			@browser.frame(:id => 'birtViewer').div(:id => 'AUTOGENBOOKMARK_6').text.include? ('Host Status')
			@browser.frame(:id => 'birtViewer').div(:id => 'AUTOGENBOOKMARK_7').text.include? ('Host Service Status Summary')
		
		elsif report == 'hostgroup status'
			@browser.frame(:id => 'birtViewer').div(:id => 'AUTOGENBOOKMARK_4').text.include? ('Host And Service Status')
			@browser.frame(:id => 'birtViewer').div(:id => 'AUTOGENBOOKMARK_6').text.include? ('Host Group Service Status')
			@browser.frame(:id => 'birtViewer').div(:id => 'AUTOGENBOOKMARK_7').text.include? ('Host Group Host Status')
			
		elsif report == 'event history'
			@browser.frame(:id => 'birtViewer').div(:id => 'AUTOGENBOOKMARK_5').text.include? ('Event History Report')
			
		elsif report == 'event history overview'
			@browser.frame(:id => 'birtViewer').div(:id => 'AUTOGENBOOKMARK_4').text.include? ('Event History Overview Report')
		
		elsif report == 'epr host multi variable' || report == 'epr hostgroup multi variable' 
			@browser.frame(:id => 'birtViewer').div(:id => 'AUTOGENBOOKMARK_3').text.include? ('Enterprise Performance Report')
		
		elsif report == 'epr host' || report == 'epr hostgroup topfive'
			@browser.frame(:id => 'birtViewer').div(:id => 'AUTOGENBOOKMARK_4').text.include? ('GroundWork Enterprise Performance Report')
		
		end
	end
	
		
    def go_to_subtab(subtab)
        @browser.link(:text => /Reports/).fire_event 'mouseover'
        @browser.link(:text => /#{subtab}/).when_present.click
    end

	
    def check_subtab(subtab)
        self.wait_until(10) do
            @browser.text.include? @@subtab_title[subtab]
            if subtab == "Performance View"
                @browser.frame(:id => "myframe").frame(:name => "perfchart_left").td(:class => /menu_head/).text.include? @@subtab_text[subtab]
            elsif subtab == "SLA Reports"
                @browser.div(:id => /content/).button(:value => /Website Report/).when_present.click
			elsif subtab == "BIRT Report Viewer"
				@browser.div(:id => /iceTreeRow/).link(:id => "reportTreePortlet_frmTree:reportTreePortlet_reportTree:0").when_present.click
				
            else
                @browser.frame(:id => "myframe").div(:id => "container").text.include? @@subtab_text[subtab]
            end
        end
    end
end
