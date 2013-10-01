require 'artoo'

connection :firmata, :adaptor => :firmata, :port => '/dev/ttyACM0'
device :board

work do
  puts "Firmware name #{board.firmware_name}"
  puts "Firmata version #{board.version}"

end