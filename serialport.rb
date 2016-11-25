#!/usr/bin/env ruby
require "serialport"

port_str = "/dev/cu.usbserial-A400fQSU"
baud_rate = 9600
data_bits = 8
stop_bits = 1
parity = SerialPort::NONE

sp = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)

while true do
  while (i = sp.gets.chomp) do
    params = i.split(",")
    room_id = 1
    `curl -H "Content-Type: application/json" -X POST -d '{"temp_max":"#{ params[0] }","temp_mini":"#{ params[1] }", "temp":"#{ params[2] }", "room_id": "#{ room_id }"}' http://localhost:3000/api/`
  end
end
sp.close

# `curl -H "Content-Type: application/json" -X POST -d '{"temp_max":"18","temp_min":"24","temp":"26.00}' http://localhost:3000/api/`
#!/usr/bin/env ruby // chmod +x file.rb
# ./serialport.rb
