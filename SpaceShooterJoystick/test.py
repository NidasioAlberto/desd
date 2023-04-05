from PIL import Image
import serial
import time

# Configuration
serialPort = '/dev/ttyUSB1'
imageOutputFile = 'test.jpeg'
imageSize = (8, 8)

# Open the serial port
port = serial.Serial(serialPort, 115200)

# Send a command
port.write(bytearray([0xc0, 0, 0, 255]))
port.flush()

# Close the serial port
port.close()
