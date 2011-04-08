class Job < ActiveRecord::Base
  has_many :applicants, :dependent => :destroy
  belongs_to :category
  before_save :add_new_category
  # belongs_to :admin
  validates :deadline, :presence => true
  validates :title, :presence => true
  validates :category, :presence => true



 # scope :expired, where(:deadline <=> Date.today)
 # scope :active, where(:deadline >=> Date.today)
  attr_accessor :new_category

  def add_new_category
    if self.new_category
      self.build_category(:name => self.new_category).save
    end
  end

  def self.search(parameters)
    if parameters
      find(:all, :conditions => ['title LIKE ? or description LIKE ?', "%#{parameters}%", "%#{parameters}%"])
    else
      find(:all)
    end
  end
end
