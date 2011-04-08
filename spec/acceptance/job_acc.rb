require 'acceptance/acceptance_helper'
feature "Job Creation Test" do

  background do
  end

  scenario "Checking if the job has been created" do
    visit new_job_path
    fill_in("Email", :with => "a@a.com")
    fill_in("Password", :with => "password")
    click_button "Sign in"
    page.should have_content("Welcome")
  end
end