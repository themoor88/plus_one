class FriendshipsController < ApplicationController
  def my_friends
    @friendships = current_user.confirmed_friends
  end

  def create
    @user = User.find(params[:user_id])
    @friendee = current_user.friendees.build
    @friendee.friendee = @user
    @friendee.save
    if @friendee.save
      redirect_to root_path
    else
      render 'show'
    end
  end

  def update
    @friendship = Friendship.find(params[:id])
    @friendship.confirmed = true
    respond_to do |format|
      if @friendship.save
        format.html { redirect_to user_path(@user), :notice => "User friended pending acceptance" }
        format.js
      else
        format.html { render 'show' }
        format.js
      end
    end
  end

  def accept
    @friendship = Friendship.find(params[:id])
    @friendship.confirmed = true
    if @friendship.save
      redirect_to(:back)
    else
      render 'show'
    end
  end

  def decline
    @friendship = Friendship.find(params[:id])
    @friendship.confirmed = false
    if @friendship.save
      redirect_to(:back)
    else
      render 'show'
    end
  end

  def seen
    @friendship = Friendship.find(params[:id])
    @friendship.seen = true
    if @friendship.save
      redirect_to(:back)
    else
      render 'show'
    end
  end
end