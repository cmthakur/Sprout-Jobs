class Job < ActiveRecord::Base
  has_many :applicants, :dependent => :destroy
  belongs_to :category
  # belongs_to :admin
  validates :deadline ,:presence => true
  validates :title ,:presence => true
  
 # scope :expired, where(:deadline <=> Date.today)
 # scope :active, where(:deadline >=> Date.today)

  def self.search(parameters)
    if parameters
      find(:all, :conditions => ['title LIKE ? or description LIKE ?', "%#{parameters}%", "%#{parameters}%"])
    else
      find(:all)
    end
  end
end
