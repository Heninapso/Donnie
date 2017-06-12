class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :meetings, dependent: :destroy

  after_create :subscribe_to_newsletter, only: [:user_new?]

  private

  def subscribe_to_newsletter
    SubscribeToNewsletterService.new(self).call
  end

  def user_new?
    User.exists?(self)
  end

end
