class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.string :image
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
