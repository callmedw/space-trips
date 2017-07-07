class AddProductColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :star, :string
    add_column :products, :agency, :string
    add_column :products, :craft, :string
    add_column :products, :distance, :string
  end
end
