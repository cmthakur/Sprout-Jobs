require 'spec_helper'

describe Applicant do
  it {should have_many :applicants}
  # it {should belong_to :admin}
  it {should validate_presence_of :title}
  it {should validate_presence_of :deadline}
end