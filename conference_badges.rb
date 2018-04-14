def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  badge_names = []
  names.each { |name| badge_names << badge_maker(name)}
  badge_names
end

# def batch_badge_creator(attendees)
#   attendees.map do |attendee|
#     "Hello, my name is #{attendee}."
#   end
# end

def assign_rooms(names)
  names.each_with_index.map do |name, index|
    "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
end

def printer(attendees)
  batch_badge_creator(attendees).each do |element|
    puts element
  end
  assign_rooms(attendees).each do |element|
    puts element
  end
end