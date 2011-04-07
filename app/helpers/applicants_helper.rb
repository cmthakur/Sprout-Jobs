module ApplicantsHelper
  def show_details(applicant)
    content_tag :div do
      [
        "Name: ",applicant.name,"<br />",
        "Age: ",calculate_age(applicant.dob),"<br />",
        "Education: ",applicant.education,"<br />",
        "Experience: ",applicant.experience,"<br />",
        "Details: ","<br />",applicant.why_you,"<br />",
        "Reason for choosing sprout: ","<br />",applicant.why_sprout,"<br />"
        ].join(' ').html_safe
      end
    end

    def calculate_age(date)
      (Date.today - date).to_i/365
    end
  end
