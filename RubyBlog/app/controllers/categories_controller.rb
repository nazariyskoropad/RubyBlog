class CategoriesController < ApplicationController

  def show
    @categories = Category.all
    @posts = Post.all.ordered.with_categories
    @posts = @posts.find_by_category_id(params[:id])
  end

end
