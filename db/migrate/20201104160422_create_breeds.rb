class CreateBreeds < ActiveRecord::Migration[6.0]
  def change
    create_table :breeds do |t|
      t.string :nameofbreed
      t.string :category

      t.timestamps
    end
  end
end