class AddUserReferenceToComments < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :comments, :users, column: :commentor_id
    add_index :comments, :commentor_id
    change_column_null :comments, :commentor_id, false
  end
end
