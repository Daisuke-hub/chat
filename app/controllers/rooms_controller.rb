class RoomsController < ApplicationController

  def create
    room = Room.new(host_id: current_user.id, member_id: params[:user_id])
    room.save
    redirect_to room_path(room.id)
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages.all
  end
end
