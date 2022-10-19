require "csv"

## competitions ###
# csv_text = File.read(Rails.root.join("lib", "seeds", "sr_dev_competitions_2.csv"))
# competitions_csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")

# competitions_csv.each do |row|
#   competition = Competition.new
#   competition.orig_comp_id = row["orig_comp_id"]
#   competition.name = row["name"]
#   competition.team_type = row["team_type"]
#   competition.scope = row["scope"]
#   competition.competition_format = row["competition_format"]
#   competition.country = row["country"]
#   competition.save
#   puts "#{competition.orig_comp_id}, #{competition.name} saved"
# end

### people ###
# csv_text = File.read(Rails.root.join("lib", "seeds", "sr_dev_people_2.csv"))
# people_csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")

# people_csv.each do |row|
#   person = Person.new
#   person.orig_person_id = row["orig_person_id"]
#   person.name = row["name"]
#   person.birth_date = row["birth_date"]
#   person.save
#   puts "#{person.orig_person_id}, #{person.name}  has been saved"
# end

# ### stats ###
# csv_text = File.read(Rails.root.join("lib", "seeds", "sr_dev_stats_2.csv"))
# stats_csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")

# stats_csv.each do |row|
#   stat = Stat.new
#   stat.orig_person_id = row["orig_person_id"]
#   stat.season = row["season"]
#   stat.orig_comp_id = row["orig_comp_id"]
#   stat.orig_team_id = row["orig_team_id"]
#   stat.games = row["games"]
#   stat.minutes = row["minutes"]
#   stat.goals = row["goals"]
#   stat.assists = row["assists"]
#   stat.save
#   puts "#{stat.id} #{stat.orig_comp_id} belonging to player ##{stat.orig_person_id} has been saved."
# end

### teams ###
csv_text = File.read(Rails.root.join("lib", "seeds", "sr_dev_teams_2.csv"))
teams_csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")

teams_csv.each do |row|
  team = Team.new
  team.orig_team_id = row["orig_team_id"]
  team.name = row["name"]
  team.country = row["country"]
  team.team_type = row["team_type"]
  team.save
  puts "#{team.orig_team_id} #{team.name} has been saved."
end
