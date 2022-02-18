class CommentResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :item_id, :integer
  attribute :commentor_id, :integer
  attribute :comment_text, :string

  # Direct associations

  belongs_to :item

  belongs_to :user,
             foreign_key: :commentor_id

  # Indirect associations
end
