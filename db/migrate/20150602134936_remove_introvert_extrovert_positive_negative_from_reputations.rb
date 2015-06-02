class RemoveIntrovertExtrovertPositiveNegativeFromReputations < ActiveRecord::Migration
  def change
    remove_column :reputations, :introvert
    remove_column :reputations, :extrovert
    remove_column :reputations, :positive
    remove_column :reputations, :negative
    add_column :reputations, :introvertextrovert, :integer
    add_column :reputations, :positivenegative, :integer
  end
end
