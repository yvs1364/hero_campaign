class AddUserIdToAdventure < ActiveRecord::Migration[6.0]
  def change
    add_reference :adventures, :user, index: true
  end
end
