class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :job_applications, dependent: :destroy
  has_many :exp_scores, dependent: :destroy
  has_many :jobs, through: :job_applications
  has_many :notifications, as: :recipient
  has_many :jobs
  has_one_attached :photo

  acts_as_favoritor

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
