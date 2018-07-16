class News < ApplicationRecord
  has_and_belongs_to_many :targets
  accepts_nested_attributes_for :targets

  def self.filter(user)
    results = self.includes(targets: :specializations).where(targets: {city: [user.city, nil], profession_status: [user.profession_status, nil], specializations: {id: user.specializations.map{|s| s.id}.push(nil)}})
  end
end
