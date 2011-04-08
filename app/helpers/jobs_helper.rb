module JobsHelper
  def date_diff_in_days(date)
    difference = (date - Date.today).to_i
      difference = "#{difference} days remaining"
  end

end
