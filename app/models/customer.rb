class Customer < ApplicationRecord
  belongs_to :user
  validates_uniqueness_of :email
end
