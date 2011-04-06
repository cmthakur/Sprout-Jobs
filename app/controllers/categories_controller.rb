class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
    respond_to do |format|
      if @category.save
        format.html{}
        format.js {}
      else
        format.js {render :js => "alert(Cannot create a category);"}
      end
    end
  end
end
