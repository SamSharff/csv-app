class Stat < ApplicationRecord
  belongs_to :person, foreign_key: :orig_person_id, primary_key: :orig_person_id
  belongs_to :team
  belongs_to :competition
end
