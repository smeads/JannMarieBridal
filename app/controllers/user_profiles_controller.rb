class UserProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_user, except: [:show, :new, :create, :edit, :update, :destroy]

  def authorize_user
    unless current_user.admin?
      flash[:alert] = "You must be an admin to do that."
      redirect_to home_index_path
    end
  end

  def index
    @user_profiles = UserProfile.all
  end

  def show
    @user_profile = UserProfile.find(params[:id])
  end

  def new
    @user_profile = UserProfile.new
  end

  def create
    @user_profile = UserProfile.new
    @user_profile = UserProfile.new(user_profile_params)

    @user_profile.user = current_user

    if @user_profile.save
      flash[:notice] = "Wedding profile saved successfully."
      redirect_to @user_profile
    else
      flash.now[:alert] = "There was an error saving the profile. Please try again."
       render :new
    end
  end

  def edit
    @user_profile = UserProfile.find(params[:id])
  end

  def update
    @user_profile = UserProfile.find(params[:id])
    @user_profile.assign_attributes(user_profile_params)

    if @user_profile.save
      flash[:notice] = "Wedding profile saved successfully."
      redirect_to @user_profile
    else
      flash.now[:alert] = "There was an error saving the profile. Please try again."
       render :new
    end
  end

  def destroy
    @user_profile = UserProfile.find(params[:id])
    if @user_profile.destroy
      flash[:notice] = "\"#{@user_profile.full_name}\" was deleted successfully."
      redirect_to user_profiles_path
    else
     flash.now[:alert] = "There was an error deleting the wedding profile."
     render :show
    end
  end

  private

  def user_profile_params
    params.require(:user_profile).permit(:full_name, :email, :phone_number, :shipping_address,
    :wedding_date, :bridals_date, :height, :over_bust, :bust, :under_bust, :bra_size,
    :waist, :hip, :natural_waist, :shoulder_to_shoulder, :shoulder_to_waist, :waist_to_floor,
    :rise, :sleeve_length, :arm_hole, :bicep, :forearm, :image, :deposit,
    :paid_in_full, :shipping)
  end
end
