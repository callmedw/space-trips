class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :image, :string
      t.column :cost, :integer
      t.column :description, :string

      t.timestamps
    end
  end
end
