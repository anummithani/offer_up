class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email, :string
  attribute :password, :string
  attribute :name, :string

  # Direct associations

  has_many   :comments,
             foreign_key: :commentor_id

  has_many   :bought_items,
             resource: ItemResource,
             foreign_key: :buyer_id

  has_many   :items_for_sale,
             resource: ItemResource,
             foreign_key: :seller_id

  # Indirect associations
end
