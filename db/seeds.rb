shelters = [
  { country: "US", city: "Silicon Valley", address: "Silicon Valley, CA" },
  { country: "US", city: "Los Angeles", address: "Los Angeles, CA" },
  { country: "US", city: "San Francisco", address: "San Francisco, CA" }
]

shelters.each do |shelter|
  Shelter.create!(shelter)
rescue ActiveRecord::RecordInvalid => e
  puts "Failed to create Shelter with details: #{shelter.as_json}, exception: #{e.message}"
end
