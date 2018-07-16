class Target < ApplicationRecord
  has_and_belongs_to_many :specializations
  has_and_belongs_to_many :news
  belongs_to :city
  belongs_to :profession_status
end
