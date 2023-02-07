class Skill < ApplicationRecord
  belongs_to :skill_category

  validates :description, presence: true
end
