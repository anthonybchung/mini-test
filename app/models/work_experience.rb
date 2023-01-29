class WorkExperience < ApplicationRecord
  has_many :responsibilities
  
  validates :company,presence: true

  validates :location,presence: true

  validates :start_date,presence: true
  validates :start_date,comparison: {less_than: Date.today}

  validates :end_date, comparison: {greater_than: :start_date, allow_nil: true}
  validates :end_date, comparison: {less_than: Date.today,allow_nil:true}

  validates :summary, length: {maximum: 200}

  
end
