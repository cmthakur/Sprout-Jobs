class Applicant < ActiveRecord::Base
  belongs_to :job
  scope :all, order('created_at DESC')
  scope :rejected, where(:accepted => false)
  scope :accepted, where(:accepted => true)

  def self.search(parameters)
    if parameters
      find(:all, :conditions => ['name LIKE ?', "%#{parameters}%"])
    else
      find(:all)
    end
  end

end
