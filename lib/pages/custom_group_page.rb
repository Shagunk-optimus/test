class CustomGroupPage
    include PageObject

    direct_url BASE_URL + "groundwork-administration/customgroupsview"
    @@group_type  = { "HostGroup" => 1, "ServiceGroup" => 2, "CustomGroup" => 3}
    button :form_button, :value => "Create New CustomGroup"
    text_field :name, :class =>/iceInpTxt portlet-form-input-field text/
    select_list :children, :class => /iceSelMnyLb portlet-form-field/
    select_list :children_edit, :id => /editCustomGroupForm:SlctChildren_leftList/
    button :add_children, :alt => /Add Selected Item/
    button :add_children_edit, :id => /editCustomGroupForm:SlctChildren_addBtn/
    button :save_and_publish, :value => /Save and Publish/
    button :save, :value => /Save/

    table :groups_table, :class => /iceDatTbl/
    button :edit_group, :value => /Edit CustomGroup/
    button :delete_group, :value => /Delete CustomGroup/
    button :confirm_delete, :value => "Delete"
    #button :confirm_delete, :name => /:cgListFrm:deleteConfirmPanel-accept/

    span :error_msg, :class => /iceMsgsInfo portlet-msg-info/
    span :no_groups_available, :id => /cgListFrm:j_id13/
    span :delete_confirm_message, :text => /Please confirm your delete action!/
    span :edit_error_message, :text => /Cannot edit multiple custom groups!/
    span :create_error_message, :text => /Custom Group with CG1 already exists/
    span :mix_error_message, :text => /You cannot mix HostGroups, ServiceGroups or CustomGroups!/

    #checkbox :custom_group1, :id => /cgListFrm:customGroups:0:j_id17/
    checkbox :custom_group1, :id => /cgListFrm:customGroups:0/
	#checkbox :custom_group2, :id => /cgListFrm:customGroups:1:j_id17/
	checkbox :custom_group2, :id => /cgListFrm:customGroups:1/

	span :child_error_message, :text => /Please add atleast one child!/ 
	button :remove_button, :id => /editCustomGroupForm:SlctChildren_removeAllBtn/

	link :configuration, :text => /Configuration/
	link :administration, :text => /Administration/
	link :customgroups, :text => /CustomGroups/
	link :control, :text => /Control/
	button :continue, :name =>/continue/
	link :services, :text => /Services/	
	
    def create(name,type,*children_to_add)
        self.name = name
        if @@group_type.has_key?(type)
            @browser.radio(:value => "#{@@group_type["#{type}"]}").set
            sleep(1)
        end
        children_to_add.each do |child|
            if self.children_element.include?("#{child}")
                self.children = child
            end
        end
        sleep(2)
		self.add_children
        #This sleep is necessary to wait until the child is load
        #Next step not important upto now is to make is wait until the child appears in the selected list
        sleep(1)
    end

    def edit(name, host_to_add)
        found = false
        self.groups_table_element.to_a.each do |row|
            row.to_a.each do |cell|
                if cell.text == name
                    row.to_a[0].checkbox_element.check
                    self.edit_group
                    sleep(1)
                    found = true
                    break
                end
            end
            break if found
        end
        if found
            if self.children_edit_element.include?("#{host_to_add}")
                self.children_edit = host_to_add
                self.add_children_edit
                "OK"
            else
                 "Invalid child to add"
            end

        else 
            "Invalid Custom group name"
        end
    end

    def check_group(name)
        found = false
        self.groups_table_element.to_a.each do |row|
            row.to_a.each do |cell|
                if cell.text == name
                    row.to_a[0].checkbox_element.check
                    found = true
                    break
                end
            end
            break if found
        end
        found
    end

    def delete(name)
        found = false
        self.groups_table_element.to_a.each do |row|
            row.to_a.each do |cell|
                if cell.text == name
                    row.to_a[0].checkbox_element.check
                    self.delete_group
                    self.confirm_delete
                    found = true
                    break
                end
            end
            break if found
        end
        found
    end

end
