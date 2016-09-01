class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.text :shipping_address
      t.datetime :wedding_date
      t.datetime :bridals_date
      t.decimal :height
      t.decimal :over_bust
      t.decimal :bust
      t.decimal :under_bust
      t.integer :braw_size
      t.decimal :waist
      t.decimal :hip
      t.decimal :natural_waist
      t.decimal :shoulder_to_shoulder
      t.decimal :shoulder_to_waist
      t.decimal :waist_to_floor
      t.decimal :rise
      t.decimal :sleeve_length
      t.decimal :arm_hole
      t.decimal :bicep
      t.decimal :forearm
      t.boolean :deposit
      t.boolean :paid_in_full
      t.boolean :shipping

      t.timestamps null: false
    end
  end
end
