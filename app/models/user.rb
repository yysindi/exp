class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :applications, dependent: :destroy
  has_many :exp_scores, dependent: :destroy
  has_many :jobs, through: :applications

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
