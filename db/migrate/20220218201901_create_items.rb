class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :price
      t.string :description
      t.integer :category_id
      t.string :location
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
