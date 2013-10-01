require 'artoo'

connection :firmata, :adaptor => :firmata, :port => '/dev/ttyACM0'
device :board
device :servo, :driver => :servo, :pin => 3 # pin must be a PWM pin
@which = false

work do
  puts "Firmware name #{board.firmware_name}"
  puts "Firmata version #{board.version}"

  while true
    if @which 
      servo.move(100)
      puts "move forward"
      @which = false
    else
        servo.move(70)
        puts "move backwards"
        @which = true
   end
   
    sleep(5)
end
end