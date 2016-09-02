class UserProfilesController < ApplicationController

  def index
    @user_profiles = UserProfile.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
