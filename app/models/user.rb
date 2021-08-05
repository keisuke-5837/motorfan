class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :image
  has_many :machines

  # validates :password, format: {with: VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i}

  with_options presence: true do
    validates :phone_number, format: {with: /\A\d{10,11}\z/}
    validates :user_name, uniqueness: true, format: {with: /\A[a-zA-Z0-9]+\z/}
  end

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.user_name = "gest1234"
      user.phone_number = "09012345678"
    end
  end
end
