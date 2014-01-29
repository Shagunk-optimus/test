require 'watir-webdriver'
include Selenium

#capabilities = WebDriver::Remote::Capabilities.firefox(:javascript_enabled => true, :platform=>:any)
#browser = Watir::Browser.new(:remote, :url => "http://qa-jenkins-server:4444/wd/hub", :desired_capabilities => capabilities)

browser = Watir::Browser.new :firefox
browser.goto "http://qa-sles-10-64.groundwork.groundworkopensource.com/portal/auth/portal/groundwork-monitor"
browser.text_field(:name => 'josso_username').set 'admin' 
browser.text_field(:name => 'josso_password').set 'admin'
browser.button(:value => 'Login').click
i=0
while true do
    i+=1
    puts "Iteracion nro: #{i}"
    browser.link(:text => "Status").when_present.click
    sleep(15)
    
    browser.span(:id => "frmTree:pnlTbSet:0:hstTree:n-0:TxtNdClick").when_present.click
    sleep(5)
    browser.span(:id => "HGVform:eventHeader").when_present.click
    sleep(15)
    
    browser.span(:id => "frmTree:pnlTbSet:0:hstTree:n-0-0:TxtNdClick").when_present.click
    sleep(5)
    browser.span(:id => "HVform:hostAvailHeader").when_present.click
    sleep(15)
    browser.span(:id => "HVform:servicelistHeader").when_present.click
    sleep(5)
    browser.span(:id => "HVform:eventHeader").when_present.click
    sleep(5)
    browser.span(:id => "HVform:commentsHeader").when_present.click
    sleep(5)
    browser.button(:id => "HVform:CPaddNewComment").when_present.click
    sleep(3)
    browser.text_field(:id => "HVform:CPtxtCommentArea").set "test"
    sleep(3)
    browser.button(:id => "HVform:CPcmdAddPopUpCommit").when_present.click
    sleep(15)
    
    browser.span(:id => "frmTree:pnlTbSet:0:hstTree:n-0-0-0:TxtNdClick").when_present.click
    sleep(5)
    browser.span(:id => "SVform:serviceAvailHeader").when_present.click
    sleep(5)
    browser.span(:id => "SVform:eventHeader").when_present.click
    sleep(15)
    
    #Vamos a probar de cerrar el HG1 y Linux server para no tener que hacer un logout
    browser.img(:src => "/portal-statusviewer/images/tree_nav_middle_close.gif").when_present.click
    browser.img(:src => "/portal-statusviewer/images/tree_nav_bottom_open.gif").when_present.click
end

browser.close

