

class Vehicle
  attr_accessor :color, :speed, :movement, :name
  def movement
    puts "The #{@name} can #{@movement}"
  end
end


class Car < Vehicle
end

class Plane < Vehicle
end


ferrari = Car.new
ferrari.speed = 220
ferrari.movement = "drive"
ferrari.name = "Ferrari"
ferrari.color = :red

boeing = Plane.new
boeing.speed = 850
boeing.movement = "fly"
boeing.name = "Boeing-747"

bike = Vehicle.new
bike.speed = 30
bike.movement = "ride"
bike.name = "bike"

puts "Currently available in shop:\n\n"



vehicles = [boeing, ferrari, bike]
vehicles.each do |vehicle|
  puts vehicle.name
  puts vehicle.speed
  vehicle.movement
end
