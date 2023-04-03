from PIL import Image
import serial

# Configuration
serialPort = '/dev/ttyUSB1'
imageInputFile = 'colored 256x256.jpeg'
imageOutputFile = 'output.jpeg'

# Open the image and the serial port
colored = Image.open(imageInputFile)
port = serial.Serial(serialPort, 115200)

# Create the new gray scaled image
grayed = Image.new(mode="RGB", size=colored.size)

print("Image size: {}".format(colored.size))

for row in range(colored.size[0]):
    # Prepare an array with all the pixels of one col
    coloredPixels = []
    for col in range(colored.size[1]):
        coloredPixels += list(colored.getpixel((row, col)))

    # Send the whole column
    port.write(bytearray(coloredPixels))

    # Read back the gray scaled pixels
    averages = bytearray(port.read(colored.size[1]))

    # Update the pixels
    for col in range(colored.size[1]):
        # average = int.from_bytes(averages[col], "big")
        average = averages[col]
        grayed.putpixel((row, col), (average, average, average))

    # for col in range(colored.size[1]):
    #     # Get colored pixel
    #     pixel = colored.getpixel((row, col))

    #     # print("Writing {}".format(pixel))

    #     # Send values to board
    #     port.write(bytearray(pixel))

    #     # Read average
    #     average = int.from_bytes(port.read(), "big")

    #     # print("Average {}".format(average))

    #     # Set the grayed pixel
    #     grayed.putpixel((row, col), (average, average, average))

    # Print completion percentage
    print("{:.1f}%".format(row / colored.size[0] * 100))

# Close the serial port
port.close()

# Save the grayed image
grayed.save(imageOutputFile)

# Show the two images
colored.show()
grayed.show()
