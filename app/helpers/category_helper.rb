module CategoryHelper

  def show_form(category)
    render :partial => 'form', :locals => category
    #"hello world"
  end
end