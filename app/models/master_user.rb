
class MasterUser < ApplicationRecord
  devise :rememberable, :omniauthable

  has_many :users, dependent: :destroy
  def social_profile(provider)
    users.select { |sp| sp.provider == provider.to_s }.first
  end
end
