class AddReviewedToApplicant < ActiveRecord::Migration
  def self.up
    add_column :applicants, :reviewed, :boolean
  end

  def self.down
    remove_column :applicants, :reviewed
  end
end
