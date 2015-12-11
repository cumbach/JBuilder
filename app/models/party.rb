class Party < ActiveRecord::Base
  validates :name, :location, presence: true

  def self.party_with_guests
    self.includes(:guests)
  end


  has_many :invitations
  has_many :guests, through: :invitations, source: :guest
end
