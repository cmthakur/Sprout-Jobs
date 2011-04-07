class CategoriesController < ApplicationController

  def new
    @category = Category.new
    respond_to do |format|
      format.js {}
    end
  end

  def create
    @category = Category.new(params[:category])
    respond_to do |format|
      if @category.save
        format.js
      else
        format.js {render :js => "alert(Cannot create a category);"}
      end
    end
  end
end
