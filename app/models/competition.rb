class Competition < ApplicationRecord
  has_many :stats, foreign_key: :orig_comp_id, primary_key: :orig_comp_id
end
