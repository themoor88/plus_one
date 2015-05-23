class RenameReputationToReputations < ActiveRecord::Migration
  def change
    rename_table :reputation, :reputations
  end
end
