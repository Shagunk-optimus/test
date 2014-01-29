require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:cucumber) do |t|
    t.profile = 'default'
end

Cucumber::Rake::Task.new(:bugs) do |t|
    t.profile = 'bugs'
end

task :daily do 
    sh "cucumber features/smoke_test/smoke_test.feature"
    sh "cucumber features/smoke_test/upgrade_view_test.feature"
    sh "cucumber features/nagvis_test/nagvis_smoke.feature"
    sh "cucumber features/custom_groups_test/custom_groups.feature"
end

task :upgrade_check do
    sh "cucumber features/smoke_test/upgrade_view_test.feature"
end

task :event_console do
    sh "cucumber features/event_console/event_console.feature"
end

task :home_page do
    sh "cucumber features/home_page/home_page_test.feature"
end

task :auto_discovery do
    sh "cucumber features/auto_discovery/auto_discovery_test.feature"
end

task :dashboard do
    sh "cucumber features/dashboard/dashboard.feature"
end

task :nagvis_advanced do
    sh "cucumber features/nagvis_test/nagvis_advanced.feature"
end


task :default => :cucumber
