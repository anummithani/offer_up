class Comment < ApplicationRecord
  # Direct associations

  belongs_to :item

  belongs_to :user,
             foreign_key: "commentor_id"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    item.to_s
  end
end
