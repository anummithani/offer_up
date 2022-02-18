class User < ApplicationRecord
  include JwtToken
  # Direct associations

  has_many   :comments,
             foreign_key: "commentor_id",
             dependent: :destroy

  has_many   :bought_items,
             class_name: "Item",
             foreign_key: "buyer_id",
             dependent: :destroy

  has_many   :items_for_sale,
             class_name: "Item",
             foreign_key: "seller_id",
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    email
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
