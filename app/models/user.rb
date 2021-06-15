class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  after_create :send_welcome_email
  has_many :applications, dependent: :destroy
  has_many :exp_scores, dependent: :destroy
  has_many :jobs, through: :applications
  has_many :notifications, as: :recipient
  has_one_attached :photo

  acts_as_favoritor

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private

  def send_welcome_email
    UserMailer.with(user: self).welcome.deliver_now
  end
end
