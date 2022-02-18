class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :item_id
      t.integer :commentor_id
      t.string :comment_text

      t.timestamps
    end
  end
end
