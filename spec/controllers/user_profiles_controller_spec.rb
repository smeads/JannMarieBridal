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
  #
  # describe "GET #edit" do
  #   it "returns http success" do
  #     get :edit
  #     expect(response).to have_http_status(:success)
  #   end
  # end
end
