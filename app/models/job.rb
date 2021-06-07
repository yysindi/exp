class Job < ApplicationRecord
  has_many :users, through: :applications
  has_many :applications
  has_many :exp_scores

  validates :industry, presence: true
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 20 }
  validates :website, presence: true
  validates :paid, presence: true
end
