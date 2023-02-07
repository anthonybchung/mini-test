class Social < ApplicationRecord
  belongs_to :creator

  before_validation{
    self.url = url.strip
  }

  validate :first_word

  VALID_URL_REGEX = /\Ahttps:\/\//i

  validates :url,format:{with: VALID_URL_REGEX}
  
  private
  
  def first_word
    if svg.split.first != "<svg"
      errors.add(:svg,"must be and svg file")
    end
  end
end
