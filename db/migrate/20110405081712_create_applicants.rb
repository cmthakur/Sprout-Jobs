class CreateApplicants < ActiveRecord::Migration
  def self.up
    create_table :applicants do |t|
      t.string :name
      t.date :dob
      t.string :email
      t.string :phone
      t.string :education
      t.string :experience
      t.text :why_sprout
      t.text :why_you
      t.integer :job_id
      t.timestamps
    end
  end

  def self.down
    drop_table :applicants
  end
end
