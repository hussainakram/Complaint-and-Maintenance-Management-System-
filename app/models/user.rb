class User < ApplicationRecord
  has_many :complaints

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  after_create :send_welcome_email


  def send_welcome_email
      UserNotifierMailer.sign_up(self).deliver
  end
end
