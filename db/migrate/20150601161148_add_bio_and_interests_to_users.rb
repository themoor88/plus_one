class AddBioAndInterestsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bio, :string
    add_column :users, :interests, :string
  end
end
