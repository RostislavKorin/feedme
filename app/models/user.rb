class User < ApplicationRecord
  has_many :meals, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  VALID_FULL_NAME_REGEX = /[^\d\W]+([\s]+[^\d\W]+){1}+/
  validates :full_name, presence: true, length: { maximum: 50 }, format: { with: VALID_FULL_NAME_REGEX }
end
