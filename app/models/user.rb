class User < ApplicationRecord
  has_many :donations
  has_many :charities, through: :donations
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
