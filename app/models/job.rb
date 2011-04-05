class Job < ActiveRecord::Base
  has_many :applicants
  belongs_to :category
  # belongs_to :admin
  validates :deadline ,:presence => true
  validates :title ,:presence => true

  def self.search(parameters)
    if parameters
      find(:all, :conditions => ['title LIKE ?', "%#{parameters}%"])
    else
      find(:all)
    end
  end
end
