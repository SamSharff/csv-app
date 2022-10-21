class Person < ApplicationRecord
  has_many :stats, foreign_key: :orig_person_id, primary_key: :orig_person_id

  def self.ronaldo
    # Person.find_by(orig_person_id: "dea698d9")
    Person.where(orig_person_id: "dea698d9")
    # Person.where(orig_person_id: "dea698d9").select(:id, :first_name).take
  end

  # def age
  #   Date.new() Date.today.year - birth_date.year
  # end

  def age
    Date.today.year - birth_date.year
  end
end
