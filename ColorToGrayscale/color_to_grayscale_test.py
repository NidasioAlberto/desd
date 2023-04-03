from PIL import Image
import serial
import time

# Configuration
serialPort = '/dev/ttyUSB1'
imageOutputFile = 'test.jpeg'
imageSize = (8, 8)

# Open the serial port
port = serial.Serial(serialPort, 115200)

# Create the new gray scaled image
image = Image.new(mode="RGB", size=imageSize)

print("Image size: {}".format(imageSize))

for row in range(imageSize[0]):
    for col in range(imageSize[1]):
        # Get colored pixel
        pixel = (int(row * 256 / imageSize[0]),
                 int(col * 256 / imageSize[0]), 0)

        # print("Writing {}".format(pixel))

        # Send values to board
        port.write(bytearray(pixel))
        port.flush()

        # Read average
        average = int.from_bytes(port.read(), "big")

        # print("Average {}".format(average))

        # Set the image pixel
        image.putpixel((row, col), (average, average, average))

    # Print completion percentage
    print("{:.1f}%".format(row / imageSize[0] * 100))

# Close the serial port
port.close()

# Save the image
image.save(imageOutputFile)

# Show the image
image.show()
