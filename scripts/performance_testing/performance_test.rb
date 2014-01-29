#This is the script that we are going to use to take the time

require 'watir-webdriver'
include Selenium

#capabilities = WebDriver::Remote::Capabilities.firefox(:javascript_enabled => true, :platform=>:any)
#browser = Watir::Browser.new(:remote, :url => "http://qa-jenkins-server:4444/wd/hub", :desired_capabilities => capabilities)

browser = Watir::Browser.new :firefox

5.times do

    browser.goto "http://qa-sles-11-64.groundwork.groundworkopensource.com/portal/auth/portal/groundwork-monitor"
    browser.text_field(:name => 'josso_username').set 'admin' 
    browser.text_field(:name => 'josso_password').set 'admin'
    browser.button(:value => 'Login').click

    browser.link(:text => "Status").when_present.click
    
    browser.span(:id => "frmTree:pnlTbSet:0:hstTree:n-0:TxtNdClick").when_present.click
    browser.span(:id => "HGVform:eventHeader").when_present.click
    browser.span(:id => "frmTree:pnlTbSet:0:hstTree:n-0-0:TxtNdClick").when_present.click
    browser.span(:id => "HVform:hostAvailHeader").when_present.click
    browser.span(:id => "HVform:servicelistHeader").when_present.click
    browser.span(:id => "HVform:eventHeader").when_present.click
    browser.span(:id => "HVform:commentsHeader").when_present.click
    
    browser.span(:id => "frmTree:pnlTbSet:0:hstTree:n-0-0-0:TxtNdClick").when_present.click
    browser.span(:id => "SVform:serviceAvailHeader").when_present.click
    browser.span(:id => "SVform:eventHeader").when_present.click
    
    #Abrir el segundo host group itmon-win
    browser.span(:id => "frmTree:pnlTbSet:0:hstTree:n-0-1:TxtNdClick").when_present.click
    #Abrir linux servers -localhosts - algun servicio
    browser.span(:id => "frmTree:pnlTbSet:0:hstTree:n-1:TxtNdClick").when_present.click
    browser.span(:id => "frmTree:pnlTbSet:0:hstTree:n-1-0:TxtNdClick").when_present.click
    browser.span(:id => "frmTree:pnlTbSet:0:hstTree:n-1-0-1:TxtNdClick").when_present.click
    #Volver a abrri algun host de HG1
    browser.span(:id => "frmTree:pnlTbSet:0:hstTree:n-0-6:TxtNdClick").when_present.click
    browser.span(:id => "frmTree:pnlTbSet:0:hstTree:n-0-7:TxtNdClick").when_present.click
    #Volver a abrir linux servers - localhosts - algun servicio
    browser.span(:id => "frmTree:pnlTbSet:0:hstTree:n-1-0:TxtNdClick").when_present.click
    browser.span(:id => "frmTree:pnlTbSet:0:hstTree:n-1-0-7:TxtNdClick").when_present.click

    #Logout
    browser.link(:text => /Log Out/).when_present.click
end
browser.close

