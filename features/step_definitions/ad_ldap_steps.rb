Given /^I log in with "(.+)"$/ do |user|
	on DashboardPage do |page|
		page.logout
	end

	on LoginPage do |page|
		page.login_user(user,user)
	end
end

Then /^I should see the dashboard page for "(.+)"$/ do |user|
	on DashboardPage do |page|
		page.verify_user(user)
	end
end

Given /^I login with unauthorized "(.+)"$/ do |user|
	on DashboardPage do |page|
		page.logout
	end

	on LoginPage do |page|
		page.login_user(user,"123456")
	end
end

Then /^I should see an error message$/ do
	puts "Expected message is "+@browser.h1.text
	error_message = @browser.h1.text
	if error_message == "HTTP Status 402 -"
		puts 'true'
	else
		puts 'false'
		raise
	end
end

		