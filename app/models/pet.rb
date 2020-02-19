class Pet < ApplicationRecord
  #validations

  SPECIES = %w(dog cat rabbit wolf horse snake)
  validates :name, presence: true
  validates :species, inclusion: {in: SPECIES}

  def days_found
    today = Date.today
    (today - found_on).to_i
  end


end
