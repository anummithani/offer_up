require "rails_helper"

RSpec.describe User, type: :model do
  describe "Direct Associations" do
    it { should have_many(:comments) }

    it { should have_many(:bought_items) }

    it { should have_many(:items_for_sale) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
