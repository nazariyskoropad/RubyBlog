class CategoriesController < ApplicationController

  def show
  #  @categories = current_user.posts.(post_params)

 
      #@category = Category.find_by_name!(params[:category_id])
      #@categories = Category.where(category_id: params[:category_id])
      #@posts = @categories.posts
        @categories = Category.all
        @posts = Post.all.ordered.with_categories
        @posts = @posts.where(category_id: params[:id])
      end
    
  

end
