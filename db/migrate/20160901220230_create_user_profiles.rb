class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.text :shipping_address
      t.string :wedding_date
      t.string :bridals_date
      t.string :height
      t.string :over_bust
      t.string :bust
      t.string :under_bust
      t.string :braw_size
      t.string :waist
      t.string :hip
      t.string :natural_waist
      t.string :shoulder_to_shoulder
      t.string :shoulder_to_waist
      t.string :waist_to_floor
      t.string :rise
      t.string :sleeve_length
      t.string :arm_hole
      t.string :bicep
      t.string :forearm
      t.boolean :deposit
      t.boolean :paid_in_full
      t.boolean :shipping

      t.timestamps null: false
    end
  end
end
