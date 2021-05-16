# JICA_Line_Following_Robot_Competition

- Japan International Cooperation Agency (JICA) Line_Following_Robot_Competition
- Infrared sensor: CNY70
- Processor: PIC16F84A
- Motor Driver: L293D
- OPAMP
- CNY70 contains an infrared LED and a photo transistor. The light emitted from the infrared LED spreads around the sensor. This emitted light hits some objects (white stripe) and returns. The returning light hits the "white" end of the photo transistor. The current is allowed to pass between the collector emitter ends of the photo transistor, which is transmitted as a result of light coming to the white end. According to this passing current, we can make our operations by reporting the output information of the sensor to a microcontroller or any electronic control element.
- Measurements: 5 cm 4.50V, 2 cm 2.00V, 0.5 cm 100mV. Measurements are taken according to the white stripe.
