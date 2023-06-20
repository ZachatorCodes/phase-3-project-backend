trail_comments = [
  "This trail is so exciting! I saw so much wildlife.",
  "I SAW A BEAR WOOOOOOOOOOOOOOO",
  "Bears! Bears! Bears! Bears! Bears! Bears! Bears! Hike was okay. Pretty muddy.",
  "Super cool trail, very challening. I saw a bear, very scary!",
  "I still haven't found the damn bear!",
  "I did NOT see the bear :(",
  "Great trail! A little crowded, and everyone was talking about bears?",
  "I tripped and fell down the entire trail. 4/10. The 4 is for the bear.",
  "There were so many trees! My favorite was the one that looked like a little guy.",
  "Pretty muddy from all the rain, but at least the views were great!",
  "Gorgeous wildflowers, stopped at the top to relax and eat my dry oatmeal.",
  "My cat loved this trail! He loves to meow at the grass.",
  "I saw someone walking their cat? Weird but the trail was good I guess.",
  "I did the trail 6 times in a row, passed the same dude like 7 times. Trail was super good though!",
  "Someone kept passing me over and over? It was a little weird but it was funny too. Nice trail.",
  "Really steep but lots of gorgeous views.",
  "Can't believe how empty the trail was! Super awesome.",
  "Hike was awesome! Views are worth it. Lots of friendly people, not too busy.",
  "Trail in great shape, a nice amount of shade. The meadow has some flowers and it's all generally very lush green.",
  "More wildflowers are beginning to bloom and they were so lovely! Everything still very green!",
  "I'm stuck on the trail... I've been here for days!",
  "Really good hike. A nice mix of difficulty while not being too hard.",
  "Beautiful day on the trail. Snow had melted, not muddy…temperature was perfect. Lovely day!",
  "HELP I SAW A SPIDER I'M SO SCARED OF SPIDERS AHHHHHHHHHHHH",
  "Easy to navigate. We took the fire line trail back for a change of scenery which was nice. Loved the hike!"
]

puts "🌱 Seeding trails & reviews..."

Trail.create([
  {
    trail_name: "Big South Trail",
    length: 13.7,
    elevation: 1696,
    location: "Roosevelt National Forest",
    difficulty: "Hard"
  },
  {
    trail_name: "Arthur's Rock Trail",
    length: 3.2,
    elevation: 1099,
    location: "Lory State Park",
    difficulty: "Medium"
  },
  {
    trail_name: "Sky Pond via Glacier Gorge Trail",
    length: 8.6,
    elevation: 1771,
    location: "Rocky Mountain National Park",
    difficulty: "Hard"
  },
  {
    trail_name: "Anne U. White Trail",
    length: 3.2,
    elevation: 485,
    location: "Boulder County Parks and Open Space",
    difficulty: "Easy"
  },
  {
    trail_name: "Medicine Bow Peak via Lakes Trail Loop",
    length: 6.7,
    elevation: 1712,
    location: "Medicine Bow-Routt National Forest",
    difficulty: "Hard"
  }
])

Trail.all.each do |trail|
  5.times do
    Review.create({
      rating: rand(1..5),
      comment: trail_comments.sample,
      trail_id: trail.id
    })
  end
end

puts "✅ Done seeding trails & reviews!"
