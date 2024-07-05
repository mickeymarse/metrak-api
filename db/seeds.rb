# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create new Media
media = [
{
title: 'Steven Universe',
format: 'show',
appreciation: 'loved',
year: '2013',
end_year: '2019'
},

{ 
title: 'I Saw The TV GLow',
format: 'movie',
appreciation: 'indifferent',
year: '2024'
},


{  
title: 'The Cyan\'s Anthem',
format: 'comic',
appreciation: 'tasty',
year: '2023'
}
]

media.each do |medium_attributes|
  Medium.find_or_create_by!(medium_attributes)
end

# Create new Thoughts
thoughts = [
  {
    body: 'Very gay. A bit racist though.',
    medium: Medium.first
  },
    {
    body: 'I think it was the first example in media where love and understanding are chosen above violence.',
    medium: Medium.first
  },
      {
    body: 'Worth a rewatch at some point',
    medium: Medium.first
  },
  {
    body: 'Another metaphor about the trans experience.',
    medium: Medium.second
  },
    {
    body: 'I hate metaphors!',
    medium: Medium.second
  },
    {
    body: 'Visually cool though.',
    medium: Medium.second
  },
  {
    body: 'This can be so much more than it actually is. This universe/world is fascinating.',
    medium: Medium.last
  }
]

thoughts.each do |thought_attributes|
  Thought.find_or_create_by!(thought_attributes)
end
