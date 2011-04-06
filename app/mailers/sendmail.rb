class Sendmail < ActionMailer::Base
  def applicant_to_admin (user)
    @user = user
    #mail(:to => admin.email, :from => user.email,
     mail(:to => "jobs@sprout.com", :from => user.email,
          :subject => "New Application received")
  end
  def admin_to_applicant(admin,applicant)
    @user = user
    attachments['map.jpg'] = File.read("#{Rails.root}/public/images/map.jpg")
    mail(:from => admin.email, :to => user.email,
          :subject => "Call for Interview")
  end
end
