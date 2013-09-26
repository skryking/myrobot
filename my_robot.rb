require 'artoo'

connection :firmata, :adaptor => :firmata, :port => '127.0.0.1:8023'
device :board

work do
  puts "Firmware name #{board.firmware_name}"
  puts "Firmata version #{board.version}"

end