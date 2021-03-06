class ItemResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :title, :string
  attribute :price, :string
  attribute :description, :string
  attribute :category_id, :integer
  attribute :location, :string
  attribute :image, :string
  attribute :user_id, :integer

  # Direct associations

  belongs_to :category

  belongs_to :user

  # Indirect associations
end
