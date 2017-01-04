REQUIRED_BAG_SIZE = 10

available_clubs = [
  :two_iron,
  :three_iron,
  :four_iron,
  :five_iron,
  :six_iron,
  :seven_iron,
  :eight_iron,
  :nine_iron,
  :pitching_wedge,
  :sand_wedge,
  :driver,
  :three_wood,
  :five_wood,
  :seven_wood,
  :putter
]

possible_club_selections = available_clubs.sample(REQUIRED_BAG_SIZE)

requirement_clubs = [:driver, :pitching_wedge, :putter]

possible_result = possible_club_selections.inject("") { |result, club| result + "Use the #{club.to_s.gsub(/_/,' ')}!\n"}
puts "***Automated Golf Club Advice:***\n" + possible_result
print "\n"
requirement_clubs.each do |r|
  if !possible_club_selections.include?(r)
    puts "WARNING! You will be without a #{r.to_s.gsub(/_/,' ')}\n"
  end
end
