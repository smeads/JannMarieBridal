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
    # @user_profile.user = current_user
  end

  def new
    @user_profile = UserProfile.new
  end

  def create
    @user_profile = UserProfile.new
    @user_profile.full_name = params[:user_profile][:full_name]
    @user_profile.email = params[:user_profile][:email]
    @user_profile.phone_number = params[:user_profile][:phone_number]
    @user_profile.shipping_address = params[:user_profile][:shipping_address]
    @user_profile.wedding_date = params[:user_profile][:wedding_date]
    @user_profile.bridals_date = params[:user_profile][:bridals_date]
    @user_profile.height = params[:user_profile][:height]
    @user_profile.over_bust = params[:user_profile][:over_bust]
    @user_profile.bust = params[:user_profile][:bust]
    @user_profile.under_bust = params[:user_profile][:under_bust]
    @user_profile.bra_size = params[:user_profile][:bra_size]
    @user_profile.waist = params[:user_profile][:waist]
    @user_profile.hip = params[:user_profile][:hip]
    @user_profile.natural_waist = params[:user_profile][:natural_waist]
    @user_profile.shoulder_to_shoulder = params[:user_profile][:shoulder_to_shoulder]
    @user_profile.shoulder_to_waist = params[:user_profile][:shoulder_to_waist]
    @user_profile.waist_to_floor = params[:user_profile][:waist_to_floor]
    @user_profile.rise = params[:user_profile][:rise]
    @user_profile.sleeve_length = params[:user_profile][:sleeve_length]
    @user_profile.arm_hole = params[:user_profile][:arm_hole]
    @user_profile.bicep = params[:user_profile][:bicep]
    @user_profile.forearm = params[:user_profile][:forearm]
    @user_profile.image = params[:user_profile][:image]
    @user_profile.deposit = params[:user_profile][:deposit]
    @user_profile.paid_in_full = params[:user_profile][:paid_in_full]
    @user_profile.shipping = params[:user_profile][:shipping]

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
    @user_profile.full_name = params[:user_profile][:full_name]
    @user_profile.email = params[:user_profile][:email]
    @user_profile.phone_number = params[:user_profile][:phone_number]
    @user_profile.shipping_address = params[:user_profile][:shipping_address]
    @user_profile.wedding_date = params[:user_profile][:wedding_date]
    @user_profile.bridals_date = params[:user_profile][:bridals_date]
    @user_profile.height = params[:user_profile][:height]
    @user_profile.over_bust = params[:user_profile][:over_bust]
    @user_profile.bust = params[:user_profile][:bust]
    @user_profile.under_bust = params[:user_profile][:under_bust]
    @user_profile.bra_size = params[:user_profile][:bra_size]
    @user_profile.waist = params[:user_profile][:waist]
    @user_profile.hip = params[:user_profile][:hip]
    @user_profile.natural_waist = params[:user_profile][:natural_waist]
    @user_profile.shoulder_to_shoulder = params[:user_profile][:shoulder_to_shoulder]
    @user_profile.shoulder_to_waist = params[:user_profile][:shoulder_to_waist]
    @user_profile.waist_to_floor = params[:user_profile][:waist_to_floor]
    @user_profile.rise = params[:user_profile][:rise]
    @user_profile.sleeve_length = params[:user_profile][:sleeve_length]
    @user_profile.arm_hole = params[:user_profile][:arm_hole]
    @user_profile.bicep = params[:user_profile][:bicep]
    @user_profile.forearm = params[:user_profile][:forearm]
    @user_profile.image = params[:user_profile][:image]
    @user_profile.deposit = params[:user_profile][:deposit]
    @user_profile.paid_in_full = params[:user_profile][:paid_in_full]
    @user_profile.shipping = params[:user_profile][:shipping]

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
end
