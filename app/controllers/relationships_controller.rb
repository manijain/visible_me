class RelationshipsController < ApplicationController
  def follow_user
    @user = User.find_by_id(params[:user_id])
    if @user.present? && current_user.follow(@user.id)
       @followers_count = current_user.followers.count
       @following_count = current_user.following.count
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js {}
      end
    end
  end

  def unfollow_user
    @user = User.find_by_id(params[:user_id])
    if @user.present? && current_user.unfollow(@user.id)
       @followers_count = current_user.followers.count
       @following_count = current_user.following.count
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js {}
      end
    end
  end
end
