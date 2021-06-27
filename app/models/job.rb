class Job < ApplicationRecord

  has_many :users, through: :job_applications
  has_many :job_applications, dependent: :destroy
  has_many :exp_scores
  belongs_to :user

  acts_as_favoritable

  # validates :industry, presence: true
  # validates :title, presence: true
  # validates :description, presence: true, length: { minimum: 250 }
  # validates :website, presence: true
  # validates :paid, presence: true
  # validates :start_date, presence: true
  # validates :end_date, presence: true
  # validates :company_name, presence: true
  # validates :location, presence: true
  # validates :about, presence: true
  # validates :logo, presence: true
end
