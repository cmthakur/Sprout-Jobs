feature "Job Creation Test" do

  background do
    Job.create!(:title => "The Job", :deadline => "2011-12-12")
  end

  scenario "Checking if the job has been created"
end