require 'rails_helper'

RSpec.describe UserProfile, type: :model do
  let(:user_profile) { UserProfile.create!(first_name: "First Name", last_name: "Last Name",
    email: "example@email.com", phone_number: "999-999-9999", shipping_address: "Street name, City, State Zip Code",
    wedding_date: "May 27, 1988", bridals_date: "May 25, 1988", height: "0.0",
    over_bust: "0.0", bust: "0.0", under_bust: "0.0", braw_size: "AA", waist: "0.0",
    hip: "0.0", natural_waist: "0.0", shoulder_to_shoulder: "0.0", shoulder_to_waist: "0.0",
    waist_to_floor: "0.0", rise: "0.0", sleeve_length: "0.0", arm_hole: "0.0", bicep: "0.0",
    forearm: "0.0", deposit: true, paid_in_full: true, shipping: true) }

  describe "attributes" do
    it "has contact info, important dates, measurements, payment status as attributes" do
      expect(post).to have_attributes(first_name: "First Name", last_name: "Last Name",
        email: "example@email.com", phone_number: "999-999-9999", shipping_address: "Street name, City, State Zip Code",
        wedding_date: "May 27, 1988", bridals_date: "May 25, 1988", height: "0.0",
        over_bust: "0.0", bust: "0.0", under_bust: "0.0", braw_size: "AA", waist: "0.0",
        hip: "0.0", natural_waist: "0.0", shoulder_to_shoulder: "0.0", shoulder_to_waist: "0.0",
        waist_to_floor: "0.0", rise: "0.0", sleeve_length: "0.0", arm_hole: "0.0", bicep: "0.0",
        forearm: "0.0", deposit: true, paid_in_full: true, shipping: true)
    end
  end
end
