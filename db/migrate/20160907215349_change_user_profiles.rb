class ChangeUserProfiles < ActiveRecord::Migration
  def change
    rename_column :user_profiles, :first_name, :full_name
    rename_column :user_profiles, :braw_size, :bra_size
    remove_column :user_profiles, :last_name
  end
end
