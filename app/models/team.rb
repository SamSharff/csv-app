class Team < ApplicationRecord
  has_many :stats, foreign_key: :orig_team_id, primary_key: :orig_team_id
end
