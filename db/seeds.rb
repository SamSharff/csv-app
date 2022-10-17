require "csv"

### competitions ###
# csv_text = File.read(Rails.root.join("lib", "seeds", "sr_dev_competitions.csv"))
# competitions_csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")

# competitions_csv.each do |row|
#   competition = Competition.new
#   competition.comp_id = row["comp_id"]
#   competition.name = row["name"]
#   competition.team_type = row["team_type"]
#   competition.scope = row["scope"]
#   competition.competition_format = row["competition_format"]
#   competition.country = row["country"]
#   competition.save
#   puts "#{competition.comp_id}, #{competition.name} saved"
# end

### person ###
csv_text = File.read(Rails.root.join("lib", "seeds", "sr_dev_people_2.csv"))
people_csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")

people_csv.each do |row|
  person = Person.new
  person.orig_person_id = row["orig_person_id"]
  person.name = row["name"]
  person.birth_date = row["birth_date"]
  puts "#{person.orig_person_id}, #{person.name}  has been saved"
end
