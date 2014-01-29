class NagvisViewsPage
    include PageObject

    direct_url BASE_URL + "nagvis"
    in_frame(:id => 'myframe') do |frame|
        image :test_map_image, :src => /TestMap/, :frame => frame
        image :gadget_raw_number_image, :alt => "service-localhost-local_cpu_nagios",:frame => frame 
        image :gadget_thermo_image, :alt => "service-localhost-local_disk_root",:frame => frame 
        image :gadget_bar_image, :alt => "service-localhost-local_nagios_latency",:frame => frame 
        image :gadget_chart_pie_image, :alt => "service-localhost-local_mem_nagios",:frame => frame 
    end

    div :page_title, :class => "BreadcumbsInfoBar ClearFix"

    @@map_id = {"Host groups" => "map-hostgroups", "Service groups" => "map-servicegroups", "Sub maps" => "map-submaps"}

    @@map_index = {"Host groups" => 0, "Service groups" => 1, "Sub maps" => 2}
    @@hostsgroup_index = {"hosts all" => 0, "hosts critical" => 1, "hosts ok" => 2, "hosts pending" => 3, "hosts unknown" => 4, "hosts warning" => 5, "hosts up" => 6, "hosts down" => 7}
    @@servicegroup_index = {"group-all" => 0, "group-ok" => 1, "group-warning" => 2, "group-critical" => 3, "group-unknown" => 4, "group-pending" => 5 }
    @@mapname_index = {"Hosts_Up" => 0, "Hosts_Down" => 1, "hostgroups" => 2, "servicegroups" => 3}
    @@hostup_index = {"host-up-ok" => 0, "host-up-warning" => 1, "host-up-critical" => 2, "host-up-unknown" => 3, "host-up-pending" => 4}

    def map_index
        @@map_index
    end

    def hostgroup_index
        @@hostsgroup_index
    end

    def servicegroup_index
        @@servicegroup_index
    end

    def mapname_index
        @@mapname_index
    end

    def hostup_index
        @@hostup_index
    end

    def obtainMap(map_name)
        alt = @@map_id["#{map_name}"]
        @browser.frame(:id => "myframe").image(:alt => "#{alt}")
    end

    def obtainIcon(identifier)
        @browser.frame(:id => "myframe").image(:alt => "#{identifier}")
    end

    def validateState(state,index)
        text = @browser.frame(:id => "myframe").table(:class => "hover_table", :index => index).rows[4].cells[1].text
        text.include?(state)
    end

    def validateOutput(output,index)
        text = @browser.frame(:id => "myframe").table(:class => "hover_table", :index => index).rows[5].cells[1].text.gsub("\n"," ")
        text.include?(output)
    end

    def validateChildren(children,index_map)
        table = @browser.frame(:id => "myframe").table(:class => "hover_table", :index => index_map).table

        children.each_with_index do |child,index|
            table.rows[index+1].cells[0].text.include? child["name"]
            table.rows[index+1].cells[1].text.include? child["state"]
            table.rows[index+1].cells[2].text.gsub("\n"," ").include? child["output"]
        end
    end

    def validateAttribute(attribute, json_attribute, index)
        table = @browser.frame(:id => "myframe").table(:class => "hover_table", :index => index)

        table.rows.each do |row|
            if row.cells[0].text.downcase.include? attribute
                return row.cells[1].text.include? json_attribute
            end
        end
        false
    end

    def check_tab
        self.wait_until(10) do
            @browser.frame.table.text.include? "Map Index"
        end
    end

end
