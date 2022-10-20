class Stat < ApplicationRecord
  belongs_to :person, foreign_key: :orig_person_id, primary_key: :orig_person_id
  belongs_to :team, foreign_key: :orig_team_id, primary_key: :orig_team_id
  belongs_to :competition
end
