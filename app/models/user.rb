class User < ActiveRecord::Base
  validates :email_address, presence: true
  validates :email_address, uniqueness: true
end
