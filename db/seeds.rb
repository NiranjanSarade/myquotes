Quote.destroy_all

Quote.create!([{
  author: "Nelson Mandela",
  body: "The greatest glory in living lies not in never falling, but in rising every time we fall.",
  category: "Life"
},
{
  author: "Walt Disney",
  body: "The way to get started is to quit talking and begin doing.",
  category: "Success"
},
{
  author: "John Lennon",
  body: "Life is what happens when you're busy making other plans.",
  category: "Life"
},
{
  author: "Mother Teresa",
  body: "Spread love everywhere you go. Let no one ever come to you without leaving happier.",
  category: "Love"
},
{
  author: "Aristotle",
  body: "It is during our darkest moments that we must focus to see the light.",
  category: "Motivational"
},
{
  author: "Erica Jong",
  body: "If you don’t risk anything, you risk even more.",
  category: "Life"
},
{
  author: "Michael Jordan",
  body: "Some people want it to happen, some wish it would happen, others make it happen.",
  category: "Success"
}])

p "Created #{Quote.count} sample quotes"
