class MyGroundworkPage
    include PageObject

    require 'yaml'
    fn = File.dirname(File.expand_path(__FILE__)) + '/../../features/support/config.yml'
    configFile = YAML::load(File.open(fn))
    hostname = ENV['SERVER'] || configFile['server']
    direct_url "http://#{hostname}/portal/auth/dashboard/default"

    @@subtab_title = { "Welcome" => "My Groundwork", "Configure" => "My Groundwork Configuration"}
    @@subtab_text = { "Welcome" => "application is used to create personal views of monitoring information.", "Configure" => "My Groundwork Page Editor"}

    def go_to_subtab(subtab)
        @browser.link(:text => /MyGroundwork/).when_present.hover
        @browser.link(:text => subtab).when_present.click
    end

    def check_subtab(subtab)
        self.wait_until(10) do
            @browser.text.include? @@subtab_title[subtab]
            if subtab == "Welcome"
                @browser.frame.p.text.include? @@subtab_text[subtab]
            else
                @browser.text.include? @@subtab_text[subtab]
            end
        end
    end

end
