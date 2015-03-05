class User < ActiveRecord::Base
  validates :name, presence: true
  validates :lastname, presence: true
  validates :subject, presence: true
  validates :content, presence: true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

end
