class User < ApplicationRecord
  validates :sub, :email, uniqueness: true
end
