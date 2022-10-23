class Person < ApplicationRecord
  has_many :stats, foreign_key: :orig_person_id, primary_key: :orig_person_id

  # def age
  #   Date.new() Date.today.year - birth_date.year
  # end

  def age
    Date.today.year - birth_date.year
  end
end
