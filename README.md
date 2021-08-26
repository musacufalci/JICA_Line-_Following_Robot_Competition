# JICA Line Following Robot Competition

- Japan International Cooperation Agency (JICA) Line Following Robot Competition
- Infrared sensor, Processor: PIC series, Motor Driver, OPAMP
- CNY70 contains an infrared LED and a photo transistor. The light emitted from the infrared LED spreads around the sensor. This emitted light hits some objects (white stripe) and returns. The returning light hits the "white" end of the photo transistor. The current is allowed to pass between the collector emitter ends of the photo transistor, which is transmitted as a result of light coming to the white end. According to this passing current, we can make our operations by reporting the output information of the sensor to a microcontroller or any electronic control element.
- Measurements: 5 cm 4.50V, 2 cm 2.00V, 0.5 cm 100mV. Measurements are taken according to the white stripe.
- Line Follower Robot Algorithm: Sensors are placed on the front of the robot to determine where it is on the line (on the right, on the top, on the left). If the robot stays on the right of the line, the sensor on the right senses the line and sends the signal, and the left motor must run forward in order for the robot to turn towards the track, and the right motor must stop at this time. This algorithm allows our robot to take a corner.

- Design by: https://www.linkedin.com/in/musacufalci/
