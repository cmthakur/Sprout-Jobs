class AddDeadlineToJob < ActiveRecord::Migration
  def self.up
    add_column :jobs, :deadline, :date
  end

  def self.down
    remove_column :jobs, :deadline
  end
end
