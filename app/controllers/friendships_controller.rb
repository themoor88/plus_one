class FriendshipsController < ApplicationController
  def create
    @user = User.find(params[:id])
    @friendee = current_user.friendees.build
    @friendee.friendee = @user
    if @friendee.save
      redirect_to root
    else
      render 'show'
    end
    # respond_to do |format|
    #   if @friendee.save
    #     format.html { redirect_to user_path(@user), :notice => "User friended pending acceptance" }
    #     format.js
    #   else
    #     format.html { render 'show' }
    #     format.js
    #   end
    # end
  end

  def destroy
    @friendship = Friendship.find(params[:id])
  end
end