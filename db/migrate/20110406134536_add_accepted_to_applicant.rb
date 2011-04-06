class AddAcceptedToApplicant < ActiveRecord::Migration
  def self.up
    add_column :applicants, :accepted, :boolean
  end

  def self.down
    remove_column :applicants, :accepted
  end
end
