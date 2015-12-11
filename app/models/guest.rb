class Guest < ActiveRecord::Base
  validates :name, :age, :favorite_color, presence: true

  def self.guests_with_gifts
    self.includes(:gifts)
  end

  has_many :gifts
  has_many :invitations
  has_many :parties, through: :invitations, source: :party
end
