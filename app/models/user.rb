class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :machines

  validates :password, format: {with: VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i}

  with_options presence: true do
    validates :phone_number, format: {with: /\A\d{10,11}\z/}
    validates :user_name, uniqueness: true, format: {with: /\A[a-zA-Z0-9]+\z/}
  end
end
