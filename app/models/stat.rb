class Stat < ApplicationRecord
  belongs_to :person
  belongs_to :team
  belongs_to :competition
end
