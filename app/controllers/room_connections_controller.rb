class RoomConnectionsController < ApplicationController

  before_filter :signed_in_user

  def new
  end

  def create
  	@rc = current_user.room_connections.build(params[:room_connection])
  	if @rc.save
  	  flash[:success] = "room connection created!"
  	  respond_to do |format|
  	    format.html { redirect_to room_path(@rc.room_id) }
  	  end
  	else
  	  flash[:error] = "failed to create room connection"
  	  respond_to do |format|
  	  	format.html { redirect_to root_path }
  	  end
  	end
  end

  def destroy
  	@rc = RoomConnection.find_by_id(params[:id]).destroy

  	respond_to do |format|
      format.html { redirect_to root_path }
    end
  end

end
