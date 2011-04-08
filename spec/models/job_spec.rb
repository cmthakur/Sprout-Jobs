require 'spec_helper'

describe Job do
  it {should have_many :applicants}
  # it {should belong_to :admin}
  it {should validate_presence_of :title}
  it {should validate_presence_of :deadline}
  it {should validate_presence_of :category}

end