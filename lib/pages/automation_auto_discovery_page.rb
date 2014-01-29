class AutomationPage

    include PageObject
	
	direct_url BASE_URL + "auto-disc/automation"
	
	in_frame(:id => 'myframe') do |frame|
        radio :automation_schema, :value => /GroundWork-Discovery-Pro/, :frame => frame
		
		button :next, :value => /Next >>/, :frame => frame
		button :close, :name => "close", :frame => frame
		button :rename, :name => "rename", :frame => frame
		button :cancel_rename, :name => "cancel_rename", :frame => frame
		button :new_schema, :name => "new_schema", :frame => frame
		button :cancel, :name => "cancel", :frame => frame
		button :add, :name => "add", :frame => frame
		button :save, :name => "save", :frame => frame
		button :delete, :name => "delete", :frame => frame
		button :confirm_delete, :text => "Yes", :frame => frame
		button :delete_no, :value => "No", :frame => frame
		button :save_as_template, :value => "Save As Template", :frame => frame
		button :edit_record, :name => /edit_rec_qa-ubuntu-12-04-64-2/, :frame => frame
		button :add_service, :text => "Add Service", :frame => frame
		button :add_instance, :text => "Add Instance", :frame => frame
		button :view, :text => 'View', :frame => frame
		
		
		text_field :schema_name, :name => "automation_name", :frame => frame
		text_field :data_source, :name => "data_source", :frame => frame
		text_field :rename_schema, :name => "new_name", :frame => frame
	
		text_field :host_name, :name => "host_name", :frame => frame
		text_field :alias, :name => "alias", :frame => frame
		text_field :address, :name => "address", :frame => frame
		
		select :profiles_host, :name => "profiles_host", :frame => frame
		select :monarch_groups, :name => "monarch_groups", :frame => frame
		select :profiles_service, :name => "profiles_service", :frame => frame
		select :hostgroups, :name => "hostgroups", :frame => frame
		select :parents, :name => "parents", :frame => frame
		select :contactgroups, :name => "contactgroups", :frame => frame
		select :service_add, :name => "service_add", :frame => frame
		select :delimiter, :name => "delimiter", :frame => frame
		
		link :remove_service, :name => "remove_service_http_alive", :frame => frame
			
		select :type, :name => "type", :frame => frame
		select :template, :name => "template", :frame => frame
		
	
	
	end

def click(button)
	if button == "close"
		self.close_element.when_present.click
	elsif button == "cancel_rename"
		self.rename_element.when_present.click
		self.cancel_rename_element.when_present.click
	elsif button == "cancel"
		self.close_element.when_present.click
		self.new_schema_element.when_present.click
		self.cancel_element.when_present.click
	elsif button == "delete"
		self.delete_element.when_present.click		
	end
end

def verify_page(button)
	if button == 'close' || button == 'cancel'
		@browser.frame(:id => 'myframe').text.include?("Automation Home")
	elsif button == 'cancel_rename'
		@browser.frame(:id => 'myframe').text.include?("Modify Automation Schema")
	elsif button == 'delete'
		@browser.frame(:id => 'myframe').text.include?("Are you sure you want to remove automation schema")
		self.confirm_delete_element.exists?.should == true
		self.delete_no_element.exists?.should == true
		self.delete_no_element.when_present.click
	end
end

def create_schema(schema)
	self.new_schema_element.when_present.click
		if schema == "schema_type"
			self.schema_name_element.set schema
			self.type_element.option(:value => 'host-import').when_present.select
			self.add_element.when_present.click
			self.data_source_element.set "/usr/local/groundwork/core/monarch/automation/data/"+schema+".txt"
		
		elsif schema == "schema_template" || schema == "schema_template_1"
			self.schema_name_element.set schema
			self.template_element.option(:value => 'GroundWork-Default-Pro').when_present.select
			self.add_element.when_present.click
			self.data_source_element.set "/usr/local/groundwork/core/monarch/automation/data/"+schema+".txt"
		
		elsif schema == "schema_type_template"
			self.schema_name_element.set schema
			self.type_element.option(:value => 'host-import').when_present.select
			self.template_element.option(:value => 'GroundWork-Default-Pro').when_present.select
			self.add_element.when_present.click
			self.data_source_element.set "/usr/local/groundwork/core/monarch/automation/data/"+schema+".txt"
		
		elsif schema == "template"
			
			
		end
		
	self.save_element.when_present.click
end

def perform(action,schema)
	if action == 'rename'
		self.rename_element.when_present.click
		self.rename_schema_element.set schema+"_renamed"
		self.rename_element.when_present.click
	elsif action == 'delete'
		self.delete_element.when_present.click
		self.confirm_delete_element.when_present.click
	end
end

def edit_host(host)
	self.host_name_element.when_present.clear
	self.host_name_element.when_present.set host+"-renamed"
	self.address_element.when_present.clear
	self.address_element.when_present.set "172.172.172.172"
	self.alias_element.when_present.clear
	self.alias_element.when_present.set host+"-alias"
	self.profiles_host_element.select("host-profile-ssh-unix")
	self.monarch_groups_element.select("windows-gdma-2.1")
	self.profiles_service_element.select("ssh-unix")
	self.hostgroups_element.select("Linux Servers")
	self.parents_element.select("localhost")
	self.contactgroups_element.select("nagiosadmin")
	self.service_add_element.select("local_load")
	self.add_service_element.when_present.click
	sleep(3)
	@browser.frame(:id => 'myframe').radio(:value => 'http_alive').when_present.set
	sleep(2)
	@browser.frame(:id => 'myframe').text_field(:name => 'instance_add').set '_instance'
	self.add_instance_element.when_present.click
end

def create_schema_from_template(schema,template)
	self.schema_name_element.set schema
	self.template_element.select(template)
	self.add_element.when_present.click
end

def create_template(template)
	self.new_schema_element.when_present.click
	self.schema_name_element.set template
	self.template_element.option(:value => 'GroundWork-Default-Pro').when_present.select
	self.add_element.when_present.click
	self.data_source_element.set "/usr/local/groundwork/core/monarch/automation/data/"+template+".txt"
	self.delimiter_element.select(",")
end
			
		
		

end
