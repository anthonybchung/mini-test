class AboutMe < ApplicationRecord
  belongs_to :creator

  validates :paragraph, presence: true
end
