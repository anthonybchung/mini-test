class Creator < ApplicationRecord
  before_save {
    self.name = name.downcase.titleize
    self.position = position.downcase.titleize
    self.email = email.downcase
  }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: {with: VALID_EMAIL_REGEX}
end
