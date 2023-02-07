class SkillCategory < ApplicationRecord
  belongs_to :creator
  
  has_many :skills, dependent: :destroy

  validates :name, presence: true
end
