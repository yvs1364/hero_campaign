class AddBreedIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :breed_id, :interger
  end
end
