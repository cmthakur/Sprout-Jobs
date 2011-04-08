require 'spec_helper'

describe Applicant do
  it {should belong_to :job}
  # it {should belong_to :admin}
  it {should validate_presence_of :name}
  it {should validate_presence_of :dob}
end