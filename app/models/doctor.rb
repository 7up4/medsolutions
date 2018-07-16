class Doctor < ActiveRecord::Base
  devise :database_authenticatable, :validatable

  has_and_belongs_to_many :specializations
  before_save :validate_specialization_limit
  belongs_to :city
  belongs_to :profession_status

  private

  def validate_specialization_limit
    raise Exception.new if specializations.size > 5
  end
end
