# Changed attendees values just to make for more interesting results :)

classrooms = { data: { rooms: [
      { id: 1, room_number: "201", capacity: 50},
      { id: 2, room_number: "301", capacity: 200},
      { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 75 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 201 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

capacity_201 = classrooms[:data][:rooms][0][:capacity]
puts "The capacity for Room 201 is #{capacity_201}."

classrooms[:data][:events].each do |attendees|
  if attendees[:room_id] == 1 && attendees[:attendees] <= 50
    puts "Plenty of space in 201!"
  elsif attendees[:room_id] == 2 && attendees[:attendees] <= 200
    puts "Plenty of space in 301!"
  elsif attendees[:room_id] == 3 && attendees[:attendees] <= 100
    puts "Plenty of space in 1B!"
  else
    puts "Not enough room!"
  end
end
