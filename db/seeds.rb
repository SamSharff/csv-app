require "csv"

csv_text = File.read(Rails.root.join("lib", "seeds", "sr_dev_competitions.csv"))
competitions_csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")

# team = Team.new({ team_id: "testteam", name: "testteamname", country: "test country", team_type: "testteamtype" })
# team.save

competitions_csv.each do |row|
  competition = Competition.new
  competition.comp_id = row["comp_id"]
  competition.name = row["name"]
  competition.team_type = row["team_type"]
  competition.scope = row["scope"]
  competition.competition_format = row["competition_format"]
  competition.country = row["country"]
  competition.save
  puts "#{competition.comp_id}, #{competition.name} saved"
end

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'sr_dev_competitions.csv'))
# players_csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# # team = Team.new({ team_id: "testteam", name: "testteamname", country: "test country", team_type: "testteamtype" })
# # team.save

# competitions_csv.each do |row|
#   competition = Competition.new
#   competition.comp_id = row['comp_id']
#   competition.name = row['name']
#   competition.team_type = row['team_type']
#   competition.scope = row['scope']
#   competition.competition_format = row['competition_format']
#   competition.country = row['country']
#   competition.save
#   puts "#{competition.comp_id}, #{competition.name} saved"
# end
