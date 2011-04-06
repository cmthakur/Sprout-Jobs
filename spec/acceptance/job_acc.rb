require 'acceptance/acceptance_helper'
feature "Job Creation Test" do

  background do
  end

  scenario "Checking if the job has been created" do
    visit new_job_path
    fill_in("Title", :with => "The Job?")
    fill_in("Deadline", :with => "2011-12-12")
    click_button "Create Job"
    visit jobs_path
    page.should have_content("The Job?")
  end
end