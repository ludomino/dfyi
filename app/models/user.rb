class User < ApplicationRecord
  has_many :categories
  has_many :notes, through: :categories
end
