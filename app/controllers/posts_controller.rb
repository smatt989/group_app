class PostsController < ApplicationController

  before_filter :signed_in_user

  def new
  end

  def create
  	@post = current_user.posts.build(params[:post])
  	if @post.save
  	  flash[:success] = "room created!"
  	  respond_to do |format|
  	    format.html { redirect_to room_path(@post.room_id) }
  	  end
  	else
  	  flash[:error] = "failed to create room"
  	  respond_to do |format|
  	  	format.html { redirect_to root_path }
  	  end
  	end
  end

end
