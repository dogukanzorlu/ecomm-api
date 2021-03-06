# frozen_string_literal: true
class ProductSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :description, :price
  attribute :stock, &:available_stock

  belongs_to :category
  belongs_to :brand

  has_many :images
  has_many :discounts
  has_many :specifications
end
