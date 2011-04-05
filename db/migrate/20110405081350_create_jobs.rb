class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.integer :category_id
      t.string :experience

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
