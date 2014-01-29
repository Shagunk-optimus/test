Given /^I select the report "(.+)"$/ do |report|
	on ReportsPage do |page|
		page.select_report(report)
	end
end

And /^I select the parameters for viewing the report "(.+)"$/ do |report|
	on ReportsPage do |page|
		if report == 'event history overview'
			page.event_reports_element.when_present.click
		else
			page.open_report(report)
		end
	end
end

Then /^I should be able to view the "(.+)" as selected$/ do |report|
	on ReportsPage do |page|
		page.verify_report(report)
	end
end
