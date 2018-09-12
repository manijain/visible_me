class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:user_id])
    @followers_count = current_user.followers.count
    @following_count = current_user.following.count
    @incoming = FriendRequest.where(friend: current_user)
    @outgoing = current_user.friend_requests
    @friends = current_user.friends
    
    respond_to do |format|
      format.html { }
      format.js {}
    end
  end
end
