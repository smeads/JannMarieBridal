require 'rails_helper'

RSpec.describe UserProfilesController, type: :controller do

let(:my_user_profile) { UserProfile.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,
  email: Faker::Internet.email, phone_number: Faker::PhoneNumber.phone_number, shipping_address: Faker::Address.street_address,
  wedding_date: Faker::Date.forward(23), bridals_date: Faker::Date.forward(20), height: Faker::Number.decimal(2),
  over_bust: Faker::Number.decimal(2), bust: Faker::Number.decimal(2), under_bust: Faker::Number.decimal(2),
  braw_size: Faker::Number.decimal(2), waist: Faker::Number.decimal(2), hip: Faker::Number.decimal(2),
  natural_waist: Faker::Number.decimal(2), shoulder_to_shoulder: Faker::Number.decimal(2),
  shoulder_to_waist: Faker::Number.decimal(2), waist_to_floor: Faker::Number.decimal(2),
  rise: Faker::Number.decimal(2), sleeve_length: Faker::Number.decimal(2),
  arm_hole: Faker::Number.decimal(2), bicep: Faker::Number.decimal(2),
  forearm: Faker::Number.decimal(2), deposit: Faker::Boolean.boolean, paid_in_full: Faker::Boolean.boolean,
  shipping: Faker::Boolean.boolean) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "assigns [my_user_profile] to @user_profiles" do
      get :index
      expect(assigns(:user_profiles)).to eq([my_user_profile])
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, {id: my_user_profile.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      get :show, {id: my_user_profile}
      expect(response).to render_template :show
    end

    it "assigns my_user_profile @user_profile" do
      get :show, {id: my_user_profile}
      expect(assigns(:user_profile)).to eq(my_user_profile)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end

    it "instantiates @user_profile" do
      get :new
      expect(assigns(:user_profile)).not_to be_nil
    end
  end

  describe "POST create" do
    it "increases the number of UserProfile by 1" do
      expect{post :create, user_profile: {first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,
        email: Faker::Internet.email, phone_number: Faker::PhoneNumber.phone_number, shipping_address: Faker::Address.street_address,
        wedding_date: Faker::Date.forward(23), bridals_date: Faker::Date.forward(20), height: Faker::Number.decimal(2),
        over_bust: Faker::Number.decimal(2), bust: Faker::Number.decimal(2), under_bust: Faker::Number.decimal(2),
        braw_size: Faker::Number.decimal(2), waist: Faker::Number.decimal(2), hip: Faker::Number.decimal(2),
        natural_waist: Faker::Number.decimal(2), shoulder_to_shoulder: Faker::Number.decimal(2),
        shoulder_to_waist: Faker::Number.decimal(2), waist_to_floor: Faker::Number.decimal(2),
        rise: Faker::Number.decimal(2), sleeve_length: Faker::Number.decimal(2),
        arm_hole: Faker::Number.decimal(2), bicep: Faker::Number.decimal(2),
        forearm: Faker::Number.decimal(2), deposit: Faker::Boolean.boolean, paid_in_full: Faker::Boolean.boolean,
        shipping: Faker::Boolean.boolean}}.to change(UserProfile,:count).by(1)
    end

    it "assigns the new user_profile to @user_profile" do
      post :create, user_profile: {first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,
        email: Faker::Internet.email, phone_number: Faker::PhoneNumber.phone_number, shipping_address: Faker::Address.street_address,
        wedding_date: Faker::Date.forward(23), bridals_date: Faker::Date.forward(20), height: Faker::Number.decimal(2),
        over_bust: Faker::Number.decimal(2), bust: Faker::Number.decimal(2), under_bust: Faker::Number.decimal(2),
        braw_size: Faker::Number.decimal(2), waist: Faker::Number.decimal(2), hip: Faker::Number.decimal(2),
        natural_waist: Faker::Number.decimal(2), shoulder_to_shoulder: Faker::Number.decimal(2),
        shoulder_to_waist: Faker::Number.decimal(2), waist_to_floor: Faker::Number.decimal(2),
        rise: Faker::Number.decimal(2), sleeve_length: Faker::Number.decimal(2),
        arm_hole: Faker::Number.decimal(2), bicep: Faker::Number.decimal(2),
        forearm: Faker::Number.decimal(2), deposit: Faker::Boolean.boolean, paid_in_full: Faker::Boolean.boolean,
        shipping: Faker::Boolean.boolean}
        expect(assigns(:user_profile)).to eq UserProfile.last
    end

    it "redirects to the new user_profile" do
      post :create, user_profile: {first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,
        email: Faker::Internet.email, phone_number: Faker::PhoneNumber.phone_number, shipping_address: Faker::Address.street_address,
        wedding_date: Faker::Date.forward(23), bridals_date: Faker::Date.forward(20), height: Faker::Number.decimal(2),
        over_bust: Faker::Number.decimal(2), bust: Faker::Number.decimal(2), under_bust: Faker::Number.decimal(2),
        braw_size: Faker::Number.decimal(2), waist: Faker::Number.decimal(2), hip: Faker::Number.decimal(2),
        natural_waist: Faker::Number.decimal(2), shoulder_to_shoulder: Faker::Number.decimal(2),
        shoulder_to_waist: Faker::Number.decimal(2), waist_to_floor: Faker::Number.decimal(2),
        rise: Faker::Number.decimal(2), sleeve_length: Faker::Number.decimal(2),
        arm_hole: Faker::Number.decimal(2), bicep: Faker::Number.decimal(2),
        forearm: Faker::Number.decimal(2), deposit: Faker::Boolean.boolean, paid_in_full: Faker::Boolean.boolean,
        shipping: Faker::Boolean.boolean}
        expect(response).to redirect_to UserProfile.last
    end
  end

  describe "GET edit" do
    it "returns http success" do
      get :edit, {id: my_user_profile.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the #edit view" do
      get :edit, {id: my_user_profile.id}
      expect(response).to render_template :edit
    end

    it "assigns user_profile to be updated to @user_profile" do
      get :edit, {id: my_user_profile.id}

      user_profile_instance = assigns(:user_profile)

      expect(user_profile_instance.id).to eq my_user_profile.id
      expect(user_profile_instance.first_name).to eq my_user_profile.first_name
      expect(user_profile_instance.email).to eq my_user_profile.email
      expect(user_profile_instance.shipping_address).to eq my_user_profile.shipping_address
      expect(user_profile_instance.wedding_date).to eq my_user_profile.wedding_date
      expect(user_profile_instance.bridals_date).to eq my_user_profile.bridals_date
      expect(user_profile_instance.height).to eq my_user_profile.height
      expect(user_profile_instance.over_bust).to eq my_user_profile.over_bust
      expect(user_profile_instance.bust).to eq my_user_profile.bust
      expect(user_profile_instance.under_bust).to eq my_user_profile.under_bust
      expect(user_profile_instance.braw_size).to eq my_user_profile.braw_size
      expect(user_profile_instance.waist).to eq my_user_profile.waist
      expect(user_profile_instance.hip).to eq my_user_profile.hip
      expect(user_profile_instance.natural_waist).to eq my_user_profile.natural_waist
      expect(user_profile_instance.shoulder_to_shoulder).to eq my_user_profile.shoulder_to_shoulder
      expect(user_profile_instance.shoulder_to_waist).to eq my_user_profile.shoulder_to_waist
      expect(user_profile_instance.waist_to_floor).to eq my_user_profile.waist_to_floor
      expect(user_profile_instance.rise).to eq my_user_profile.rise
      expect(user_profile_instance.sleeve_length).to eq my_user_profile.sleeve_length
      expect(user_profile_instance.arm_hole).to eq my_user_profile.arm_hole
      expect(user_profile_instance.bicep).to eq my_user_profile.bicep
      expect(user_profile_instance.forearm).to eq my_user_profile.forearm
      expect(user_profile_instance.deposit).to eq my_user_profile.deposit
      expect(user_profile_instance.paid_in_full).to eq my_user_profile.paid_in_full
      expect(user_profile_instance.shipping).to eq my_user_profile.shipping
    end
  end

  describe "PUT update" do
    it "updates user_profile with expected attributes" do
      new_first_name = Faker::Name.first_name
      new_last_name = Faker::Name.last_name
      new_email = Faker::Internet.email
      new_phone_number = Faker::PhoneNumber.phone_number
      new_shipping_address = Faker::Address.street_address
      new_wedding_date = Faker::Date.forward(23)
      new_bridals_date = Faker::Date.forward(20)
      new_height = Faker::Number.decimal(2)
      new_over_bust = Faker::Number.decimal(2)
      new_bust = Faker::Number.decimal(2)
      new_under_bust = Faker::Number.decimal(2)
      new_braw_size = Faker::Number.decimal(2)
      new_waist = Faker::Number.decimal(2)
      new_hip = Faker::Number.decimal(2)
      new_natural_waist = Faker::Number.decimal(2)
      new_shoulder_to_shoulder = Faker::Number.decimal(2)
      new_shoulder_to_waist = Faker::Number.decimal(2)
      new_waist_to_floor = Faker::Number.decimal(2)
      new_rise = Faker::Number.decimal(2)
      new_sleeve_length = Faker::Number.decimal(2)
      new_arm_hole = Faker::Number.decimal(2)
      new_bicep = Faker::Number.decimal(2)
      new_forearm = Faker::Number.decimal(2)
      new_deposit = Faker::Boolean.boolean
      new_paid_in_full = Faker::Boolean.boolean
      new_shipping = Faker::Boolean.boolean

      put :update, id: my_user_profile.id, user_profile: {first_name: new_first_name, last_name: new_last_name,
        email: new_email, phone_number: new_phone_number, shipping_address: new_shipping_address,
        wedding_date: new_wedding_date, bridals_date: new_bridals_date, height: new_height,
        over_bust: new_over_bust, bust: new_bust, under_bust: new_under_bust,
        braw_size: new_braw_size, waist: new_waist, hip: new_hip, natural_waist: new_natural_waist,
        shoulder_to_shoulder: new_shoulder_to_shoulder, shoulder_to_waist: new_shoulder_to_waist,
        waist_to_floor: new_waist_to_floor, rise: new_rise, sleeve_length: new_sleeve_length,
        arm_hole: new_arm_hole, bicep: new_bicep, forearm: new_forearm, deposit: new_deposit,
        paid_in_full: new_paid_in_full, shipping: new_shipping}

      updated_user_profile = assigns(:user_profile)
      expect(updated_user_profile.id).to eq my_user_profile.id
      expect(updated_user_profile.first_name).to eq new_first_name
      expect(updated_user_profile.last_name).to eq new_last_name
      expect(updated_user_profile.email).to eq new_email
      expect(updated_user_profile.shipping_address).to eq new_shipping_address
      expect(updated_user_profile.wedding_date).to eq new_wedding_date
      expect(updated_user_profile.bridals_date).to eq new_bridals_date
      expect(updated_user_profile.height).to eq new_height
      expect(updated_user_profile.over_bust).to eq new_over_bust
      expect(updated_user_profile.bust).to eq new_bust
      expect(updated_user_profile.under_bust).to eq new_under_bust
      expect(updated_user_profile.braw_size).to eq new_braw_size
      expect(updated_user_profile.waist).to eq new_waist
      expect(updated_user_profile.hip).to eq new_hip
      expect(updated_user_profile.natural_waist).to eq new_natural_waist
      expect(updated_user_profile.shoulder_to_shoulder).to eq new_shoulder_to_shoulder
      expect(updated_user_profile.shoulder_to_waist).to eq new_shoulder_to_waist
      expect(updated_user_profile.waist_to_floor).to eq new_waist_to_floor
      expect(updated_user_profile.rise).to eq new_rise
      expect(updated_user_profile.sleeve_length).to eq new_sleeve_length
      expect(updated_user_profile.arm_hole).to eq new_arm_hole
      expect(updated_user_profile.bicep).to eq new_bicep
      expect(updated_user_profile.forearm).to eq new_forearm
      expect(updated_user_profile.deposit).to eq new_deposit
      expect(updated_user_profile.paid_in_full).to new_paid_in_full
      expect(updated_user_profile.shipping).to eq new_shipping
    end

    it "redirects to the updated user_profile" do
      new_first_name = Faker::Name.first_name
      new_last_name = Faker::Name.last_name
      new_email = Faker::Internet.email
      new_phone_number = Faker::PhoneNumber.phone_number
      new_shipping_address = Faker::Address.street_address
      new_wedding_date = Faker::Date.forward(23)
      new_bridals_date = Faker::Date.forward(20)
      new_height = Faker::Number.decimal(2)
      new_over_bust = Faker::Number.decimal(2)
      new_bust = Faker::Number.decimal(2)
      new_under_bust = Faker::Number.decimal(2)
      new_braw_size = Faker::Number.decimal(2)
      new_waist = Faker::Number.decimal(2)
      new_hip = Faker::Number.decimal(2)
      new_natural_waist = Faker::Number.decimal(2)
      new_shoulder_to_shoulder = Faker::Number.decimal(2)
      new_shoulder_to_waist = Faker::Number.decimal(2)
      new_waist_to_floor = Faker::Number.decimal(2)
      new_rise = Faker::Number.decimal(2)
      new_sleeve_length = Faker::Number.decimal(2)
      new_arm_hole = Faker::Number.decimal(2)
      new_bicep = Faker::Number.decimal(2)
      new_forearm = Faker::Number.decimal(2)
      new_deposit = Faker::Boolean.boolean
      new_paid_in_full = Faker::Boolean.boolean
      new_shipping = Faker::Boolean.boolean

      put :update, id: my_user_profile.id, user_profile: {first_name: new_first_name, last_name: new_last_name,
        email: new_email, phone_number: new_phone_number, shipping_address: new_shipping_address,
        wedding_date: new_wedding_date, bridals_date: new_bridals_date, height: new_height,
        over_bust: new_over_bust, bust: new_bust, under_bust: new_under_bust,
        braw_size: new_braw_size, waist: new_waist, hip: new_hip, natural_waist: new_natural_waist,
        shoulder_to_shoulder: new_shoulder_to_shoulder, shoulder_to_waist: new_shoulder_to_waist,
        waist_to_floor: new_waist_to_floor, rise: new_rise, sleeve_length: new_sleeve_length,
        arm_hole: new_arm_hole, bicep: new_bicep, forearm: new_forearm, deposit: new_deposit,
        paid_in_full: new_paid_in_full, shipping: new_shipping}
        expect(response).to redirect_to my_user_profile
    end
  end

  describe "DELETE destroy" do
    it "deletes the user_profile" do
      delete :destroy, {id: my_user_profile.id}
      count = UserProfile.where({id: my_user_profile.id}).size
      expect(count).to eq 0
    end

    it "redirects to user_profiles" do
      delete :destroy, {id: my_user_profile.id}
      expect(response).to redirect_to user_profiles_path
    end
  end
end
