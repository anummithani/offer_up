class Item < ApplicationRecord
  mount_base64_uploader :image, ImageUploader

  # Direct associations

  belongs_to :category

  belongs_to :user

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    title
  end

end
