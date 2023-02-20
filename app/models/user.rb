class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :email, format: { with: /\A\S+@.+\.\S+\z/, message: "field must be an e-mail" }
  validates :password, length: { minimum: 4 }
  validates :username, length: { in: 4..15 }

end
