class RoomsController < ApplicationController
  
  before_filter :signed_in_user

  def new
  end

  def create
  	@room = current_user.rooms.build(params[:room])
    logger.debug "Going"
  	if @room.save
  	  RoomConnection.transaction do
  	    rc = current_user.room_connections.build :room_id => @room.id, :user_id => current_user.id
  	  	if rc.save
	  	  flash[:success] = "room created!"
	  	  respond_to do |format|
	  	    format.js
	  	  end
	  	end
	  end
  	else
  	  flash[:error] = "failed to create room"
  	  respond_to do |format|
  	  	format.html { redirect_to root_path }
  	  end
  	end
  end

  def index
  	@rooms = Room.paginate(page: params[:page])
  end

  def show
    logger.debug "showing"
  	@room = Room.find_by_id(params[:id])
    #@rc = @room.room_connections
  	@rc = RoomConnection.find_by_room_id(@room.id)
  	respond_to do |format|
  	  format.html
  	end
  end

  def new
    respond_to do |format|
      format.html
    end
  end

end
