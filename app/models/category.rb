class Category < ApplicationRecord
  belongs_to :users
  has_many :notes, dependent: :destroy
end
