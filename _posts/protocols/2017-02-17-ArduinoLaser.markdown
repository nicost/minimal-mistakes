---
layout: page
title: Driving a green laser with an Arduino
author: nico
share: false
modified:
categories: protocols
tags: []
image:
  feature:  LaserSpeckles.jpg
  credit: Nico Stuurman
  creditlink: http://valelab.ucsf.edu/~nstuurman
date: 2017-02-17T09:09:05-08:00
---
![Green laser driven by Arduino]({{ site.url }}/siteimages/20170217_113219-laserFinal.jpg){:height="298px" width="530px"}

##Purpose
At the [AQLM course](http://www.mbl.edu/education/courses/analytical-quantitative-light-microscopy/) I have been teaching a section showing how to configure software ([Micro-Manager](http://micro-manager.org) in this case) to operate a microscope.  We do this using the optical bench microscopes the students build earlier in the course.  These are equipped with a Thorlabs camera that can be run using Micro-Manager from a course-provided laptop, and a Thorlabs LED driven by a [Thorlabs T-Cube LED driver](https://www.thorlabs.com/thorproduct.cfm?partnumber=LEDD1B).  This driver takes a TTL in through a BNC connector, so I manufactured a bunch of my "Arduino-Micro-Manager boxes" ([firmware is here](https://github.com/micro-manager/micro-manager/blob/master/DeviceAdapters/Arduino/AOTFcontroller/AOTFcontroller.ino), description of the enclosure to be written), that gives Micro-Manager the ability to send a TTL through a BNC connector.  That sparked the idea to also control lasers to do fluorescent microscopy on the optical bench microscope.  Looking into this for a little bit showed that it is quite easy to control a red laser (~650nm) since they do not draw much power and take the 5V provided by an Arduino.  For instance, [this laser from Adafruit](https://www.adafruit.com/products/1056) would be a good choice as it draws no more than 25mA (the Arduino can provide up to a maximum of 500 mA) and can be modulated up to 50kHz through a separate control line.  However, green lasers (the ubiquitous 532nm ones) seem [more complicated to control](https://forum.arduino.cc/index.php?topic=52984.0). So, I spend an afternoon to get a green laser module to be controlled from Micro-Manager.

##Parts
* [Green Laser Model](https://www.sparkfun.com/products/9906) from Sparkfun, specced at 5mW, max current of 300mA, 2.5-4.5V input voltage
* [Arduino Uno board](http://www.digikey.com/product-detail/en/arduino/A000066/1050-1024-ND/2784006), can be found (often cheaper) in many places.
* [Arduino Proto Shield](http://www.digikey.com/products/en?keywords=1568-1336-ND) with [stacking headers](http://www.digikey.com/products/en?keywords=1528-1074-ND), many alternatives will work fine
* NPN transistor that can work with at least 400mA.  I had a [MPS 222A](http://www.farnell.com/datasheets/115091.pdf) lying around
* 1KOhm resistor
* BNC connectors, wires, enclosure, etc.

##Implementation
The idea is to power the laser with the 3.3V available on the Arduino.  When the Arduino is powered through USB it can provide up to 500mA through its "power" pins, however, each of the digital output pins is rated 40mA, and the sum of outputs on the digital pins should be below 200mA (see [this link](http://www.electricrcaircraftguy.com/2014/02/arduino-power-current-and-voltage.html), b.t.w., I have driven 50 ohm impedance lasers with digital output pins of an Arduino, which should result in 100mA through a single output pin withour ever frying a board, so the 40mA is a really safe limit).  Thus, as long as not too much other stuff hangs off the Arduino it should be OK to power through the 3.3V pin, and connecting wires between the Arduino's ground and 3.3V pins and the laser module showed that it indeed worked (it was not clear to me which of the holes on the laser module to use, it worked in one orientation, and not the other, and mis-configuring did not appear to damage anything)!  That laser looks bright!


![Bread board setup with green laser]({{ site.url }}/siteimages/20170216_135834-laserBB.jpg){:height="298px" width="530px"}

   
Now, to switch the laser on and off through a digital output pin, we need an npn resistor, with its base connected through a (1kOhm) resistor to a digital output pin, its emitter connected to ground, and the collector to the laser, which itself is also connected to the 3.3V supply of the Arduino.  I first tested this out on a breadboard, and then soldered everything together on the Arduino shield. By making a standard configuration in Micro-Manager I can now control the green laser as a standard Micro-Manager shutter!

   
Wiring up the shield in the Arduino enclosure and using a BNC connector (and also soldering the laser to a BNC connector) makes it easy to deploy the laser. The laser module has a M10-0.5 thread, so I ordered a [Thorlabs SM1 to M10-0.5 adapter](https://www.thorlabs.com/thorproduct.cfm?partnumber=S1TM10).    


The biggest surprise came when I pointed the laser module onto the lab's power meter: 288mW!  ![Measuring power]({{ site.url }}/siteimages/20170217_113503-LaserPower.jpg){:height="298px" width="530px"}That makes it the most powerful and dangerous laser in the lab! It is quite scary that Sparkfun sells these as 5mW units, and I very much hope that nobody ever was damaged by one of these things.  Luckily, the potentiometer on the board can be adjusted so that output power is reduced (I ended up tuning it down to ~15 mW).  B.t.w., if it indeed draws 300mA at 3.3V, then it consumes ~1000mW, hence it operates at about 28% efficiency (and should produce about 700mW of heat).  






