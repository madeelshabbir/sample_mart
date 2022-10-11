class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description
      t.integer :quantity, null: false, default: 0

      t.index :title, unique: :true
      t.references :shop, index: :true
    end
  end
end
