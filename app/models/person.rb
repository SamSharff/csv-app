class Person < ApplicationRecord
  has_many :stats, foreign_key: :orig_person_id, primary_key: :orig_person_id
end
