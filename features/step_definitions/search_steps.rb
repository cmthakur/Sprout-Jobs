Given /^I sleep for (\d+) seconds$/ do |arg1|
  sleep(arg1.to_i)
end

Given /^I visit the search_jobs page$/ do
visit path_to(search_jobs)
end