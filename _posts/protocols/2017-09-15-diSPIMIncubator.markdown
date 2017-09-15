---
layout: page
title: diSPIM Incubator, aka "The Snorkel"
author: nico
share: false
modified:
categories: protocols
tags: [diSPim lightsheet microscopy CO2 mixer gas lasercutter]
image:
   feature: LaserSpeckles.jpg
   credit: Nico Stuurman
   cerditlink: http://valelab.ucsf.edu/~nstuurman
date: 2017-09-15T13:34-08:00
---
![diSPIM incubator aka The Snorkel]({{ site.url }}/siteimages/diSpimIncubator/snorkel_final.jpg){:height="404px" width="538"}

#Introduction
Hari Shroff's group at NIH developed a fun way of doing light sheet microscopy by placing the sample on a coverslip glass and placing two objectives above, each at 45 degrees from the glass and 90 degrees from each other. They named the method [diSPIM](https://dx.doi.org/doi:10.1038/nbt.2713).  The hardware is made by [ASI](https://www.asiimaging.com/), and I started work on a [Micro-Manager](https://micro-manager.org) plugin many years ago, a project that really came to fruition when Jon Daniels from ASI took over the lead developer's role.  [Kara McKinley](https://valelab.ucsf.edu/olympus-digital-camera/) in our lab started working on mouse intestinal organoids and we therefore became interested in getting environmental control for the diSPIM.  There are [commercial solutions](http://dispim.org/hardware/environmental_control), but since we did not yet know if our experiments were going to work (or worth the investments), we were not ready for those.  We therefore worked on a home-grown solution. 

We started out heating the standard [ASI coverslip holder](https://asiimaging.com) by attaching 50 ohm resistors that were heated using a 12V power supply, controlled by a [TE Technology TC-48-20](https://tetech.com/product/tc-48-20/) with 10k thermistors.  This worked, but led to sample evaporation.  We avoided that by covering the sample with mineral oil (actually, it was [Howard Cutting Board Oil](https://www.amazon.com/dp/B004G6X0J2/ref=asc_df_B004G6X0J25171204/?tag=hyprod-20&creative=394997&creativeASIN=B004G6X0J2&linkCode=df0&hvadid=167129443640&hvpos=1o1&hvnetw=g&hvrand=10878626644448395694&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9031957&hvtargid=pla-307434512388) ).  Naturally, this excluded gas from the sample, and the organoids quickly died presumably because of the lack of CO<sub>2</sub> and oxygen.  We fixed that problem by by cutting windows in the coverslip under the sample, placing a gas-permeable membrane underneath, and flowing 5% CO<sub>2</sub> (from a home-build gas mixer to be described later) underneath the sample.   Meghan in our lab appropriately named this contraption "The Snorkel".  It has served us very well, and we are now capable of imaging the organoids for many days on end.

#Parts

* [ASI sample holder](https://asiimaging.com)
* 4 x [M3 Thumbscrews for the sample holder](https://www.mcmaster.com/#92581A120)

![ASI coverslip holder]({{ site.url }}/siteimages/diSpimIncubator/ASIChamberjpg.jpg){:height="310px" width="502px"}

* 24x50mm coverslip glass (we normally use [VWR No 1.5 cat # 48393-241](https://us.vwr.com/store/product/4645817/vwr-micro-cover-glasses-rectangular), but I used some [Fisher Brand #2, Cat. # 12-543D](https://www.fishersci.com/shop/products/fisherbrand-cover-glasses-rectangles-rectangles-no-2-thickness-0-17-0-25mm-size-50-x-24mm/12543d) since we had it, and it should be slightly stronger.
* 3 x [50 ohm resistors](https://www.digikey.com/products/en?keywords=696-1178-ND)
* 2 x [10k thermistors](https://www.digikey.com/products/en?keywords=223-1540-ND)
* [TE Technology TC-48-20](https://tetech.com/product/tc-48-20/) controller
* 12V power supply (many options, I think I got [this one](https://tetech.com/product/ps-12-8-4a/))
* 5 minute epoxy glue
* [4.75mm acrylic](https://www.mcmaster.com/#8505k727/=19ecwx1)
* [3mm acrylic](https://www.mcmaster.com/#8505k722/=19ecxt9)
* [3M double sticky sheet](https://www.amazon.com/super-strong-double-sided-attaching-digitizers-9474-08x12-1pc/dp/B0120YI0GE/ref=sr_1_1?ie=UTF8&qid=1505519635&sr=8-1&keywords=3M+9474LE)
* a few inches of [3/8" inner diameter PVC tubing](https://www.fishersci.com/shop/products/fisherbrand-clear-pvc-tubing-13/141697h)
* [1/4" OD Nylon tubing](https://www.amazon.com/Nylon-Brake-Tubing-Suspenion-Lowrider/dp/B00CLXGHQU)
* [1/4" inner, 3/8" outer diameter tubing](https://www.fishersci.com/shop/products/fisherbrand-clear-pvc-tubing-13/141697c)
* [Tygon 0.040" ID, 0.015" Wall plastic tubing](https://www.amazon.com/Tygon-Microbore-tubing-0-040-0-070/dp/B01N7KGYXM)
* [Silicon Sealant](https://www.amazon.com/Permatex-80050-Silicone-Adhesive-Sealant/dp/B0002UEPVI/ref=sr_1_1?s=industrial&ie=UTF8&qid=1505510978&sr=1-1&keywords=silicone+sealant+permatex)
* [Laser Cutter with HPDFO](https://www.ulsinc.com/build)
* [Thermal paste](https://www.amazon.com/Thermal-ThermalCoolFlux-Performance-Polysynthetic-Silver/dp/B00QZD6LFY/ref=sr_1_5?s=electronics&ie=UTF8&qid=1505511141&sr=1-5&keywords=thermal+compound)
* Various electric wires 
* [2-stranded 24gauge electrical cable](https://www.digikey.com/product-detail/en/tensility-international-corp/30-00804/T1368-5-ND/7087254)
* Heat shrink tubing
* [XT60 connectors](https://www.amazon.com/Finware-Female-Bullet-Connectors-Battery/dp/B01ETROGP4)
* [2.5mm pitch crimp connector kit](https://www.amazon.com/Hilitchi-2-54mm-Headers-Connector-Housing/dp/B014YTPFT8/ref=sr_1_3?s=industrial&ie=UTF8&qid=1505512421&sr=1-3&keywords=Hilitchi+connector)
* [Crimp tool](https://www.amazon.com/Hilitchi-Non-Insulated-receptacles-0-14-1-5mm%C2%B2-SN-48B/dp/B014V5LUPI/ref=sr_1_1?ie=UTF8&qid=1505512398&sr=8-1&keywords=B014V5LUPI)
* Soldering iron, solder, etc.
* Gas permeable membrane: Teflon AF-2400. I got a small piece from [Biogeneral](http://www.biogeneral.com/teflon-af/), but not sure if that is a scalable solution.  You need a few pieces of 24x50 mm (which can be re-used many time, but will not last forever). 
* [0.015" Poly-Urethane sheet](https://www.mcmaster.com/#1446T11)



#Assembly and construction

* Use the epoxy to glue the thermistors to the sample holder.  One on the side (as safety), one in the middle (as the actual sensor).  Make sure the one in the center will end up in the medium, but not in the way of the objectives. 

![Chamber with thermistors and resistors]({{ site.url }}/siteimages/diSpimIncubator/chamberWithThermistors.jpg){:height="300px" width="513px"}

* Put a tiny bit of thermal paste on the metallic side of the resistors and screw them on the ASI sample holder, using the longer thumb screws rather than provided thumb screws that are too short for the resistors.  I like to put a tiny bit of vacuum grease on the screw to prevent rust and getting stuck.  Wipe away any excess thermal paste.
* Connect the resistors using 18 gauge electrical wire (I scavenged some from an electrical mains cable).  The wire should not be too thin, since the load is about 0.72A).  Hook up the resistors in parallel.  Connect the end to a male RC10 connector.  Connect a femail RC10 connector to the output of the TE Controller.  Make sure to cover all conductive materials with heat shrink tubing (I use the soldering iron itself to shrink the tubing). 
* Solder  each of the thermistors to 24gauge 2-stranded wire (polarity does not matter). Combine the 4 wires in a plug male crimp connector.  Connect the femail crimp connector to the TE controller.  Make sure that the thermistor in the center is seen by the controller as the main thermistor, and the one on the side as the safety thermistor.
* Use the laser cutter to cut 2 square windows out of the coverslip glass ([deisgn file]({{ site.url }}/siteimages/diSpimIncubator/24-50CoverslipWindows.pdf)).  I found that it works best to use the HPDFO lens and to put the coverslip glass between completely wet kimwipes A single pass at 100% power and ~2% speed cut the glass without breaking it.  To center the cut-outs at the correct position in the glass, I always put the coverslip glass in the bottom right corener of the laser cutter bed and positioned the design similarly, moving the design on the computer untill it ended up where I needed it on the glass. Clean the cut coverslip glass (I like to use ~5% Hellman X)
* Use the 3M double sticky sheet, remove foil from one side and glue to a piece of the Poly-Urethane.  Use the laser cutter to cut a ring of this material.  Remove the foil from the adhesive and glue to the center of one of the coverslips. We use this ring to constrain movement of the 10 mm round coverslip glass with the sample (organoids)
* Place a piece of 24x50 mm Teflon AF-2400 between two of the coverslips with windows cut-out, and place it in the ASI holder.  Center it well, so that the glass will not break when assembling the holder. 
* Tighten the set screws, slowly and evenly, avoid cracking the glass yet be sure that you will get a tight seal.  

![Closeup showing the windows in the glass, poly-urethane ring, and one resistor]({{ site.url }}/siteimages/diSpimIncubator/AssembledDetail.jpg){:height="432px" width="565px"}

* Cut 2 rectangles of acrylic, one rectangle with holes for the tubing ([design file here]({{ site.url }}/siteimages/diSpimIncubator/SnorkleV1.pdf)), and one circle from the 4.5mm acrylic with holes for the small tubing ([design file]({{ site.url }}/siteimages/diSpimIncubator/TubeAdapter.pdf)).  Connect the 0.070" OD tubing between the rectangular and round acrylic.  Use the silicon glue to adhere the recangular acrylic to the bottom of the sample holder.  Glue a glass slide to the bottom (see below).  Force the round acrylic into a small piece of 3/8" ID tubing, and glue everything in place with the silicon glue.  Use some 3/8" OD, 1/4" ID tubing to connect to 1/4" ID tubing that you can connect to your 5% CO<sub>2</sub> gass line.

![Back of the snorkle]({{ site.url }}/siteimages/diSpimIncubator/SnorkleBack.jpg){:height="432px" width="576px"}

![Closeup of the gas line connections]({{ site.url }}/siteimages/diSpimIncubator/tubingCloseUp.jpg){:height="701px" width="560px"}

* You will need to configure the TE controller for the 10K thermistor (the default is 5k).  I use a set temperature of 37.5 &deg;C, and an alarm temperature of 38 &deg;C.  With the objectives in the sample holder, the controller output is  ~ 75%.  

![Snorkle]({{ site.url }}/siteimages/diSpimIncubator/SnorkleOverview.jpg){:height="352px" width="575px"}
