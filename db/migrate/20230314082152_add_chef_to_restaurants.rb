class AddChefToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :chef, :string
  end
end
