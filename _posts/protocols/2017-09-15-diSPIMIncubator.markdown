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
Hari Shroff's group at NIH developed a fun way of doing light sheet microscopy by placing the sample on a coverslip glass and placing two objectives above, each at 45 degrees from the glass and 90 degrees from each other. They named the method [diSPIM](https://dx.doi.org/doi:10.1038/nbt.2713).  The hardware is made by [ASI](https://www.asiimaging.com/), and I started work on a [Micro-Manager](https://micro-manager.org) plugin many years ago, a project that really came to fruition when Jon Daniels from ASI took over the main developer's role.  [Kara McKinley](https://valelab.ucsf.edu/olympus-digital-camera/) in our lab started working on mouse intestinal organoids and we therefore became interested in getting environmental control for the diSPIM.  There are [commercial solutions](http://dispim.org/hardware/environmental_control), but since we did not yet know if our experiments were going to work (or worth the investments), we were not ready for those.  We therefore worked on a home-grown solution. 
![ASI coverslip holder]({{ site.url }}/siteimages/diSpimIncubator/ASIChamberjpg.jpg){:height="310px" width="502px"}

We started out heating the standard [ASI coverslip holder](https://asiimaging.com) by attaching 50 ohm resistors that were heated using a 12V power supply, controlled by a [TE Technology TC-48-20](https://tetech.com/product/tc-48-20/) with 10k thermistors.  This worked, but led to sample evaporation.  We avoided that by covering the sample with mineral oil (actually, it was [Howard Cutting Board Oil](https://www.amazon.com/dp/B004G6X0J2/ref=asc_df_B004G6X0J25171204/?tag=hyprod-20&creative=394997&creativeASIN=B004G6X0J2&linkCode=df0&hvadid=167129443640&hvpos=1o1&hvnetw=g&hvrand=10878626644448395694&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9031957&hvtargid=pla-307434512388) ).  Naturally, this excluded gas from the sample, and the organoids quickly died presumably because of the lack of CO<sub>2</sub> and oxygen.  We fixed that problem by by cutting windows in the coverslip under the sample, placing a gas-permeable membrane underneath, and flowing 5% CO<sub>2</sub> (from a home-build gas mixer to be described later) underneath the sample.   Meghan in our lab appropriately named this contraption "The Snorkel".  It has served us very well, and we are now capable of imaging the organoids for many days on end.

#Parts

* [ASI sample holder](https://asiimaging.com)
* 4 x [M3 Thumbscrews for the sample holder](https://www.mcmaster.com/#92581A120)
* 24x50mm coverslip glass (we normally use [VWR No 1.5 cat # 48393-241](https://us.vwr.com/store/product/4645817/vwr-micro-cover-glasses-rectangular), but I used some [Fisher Brand #2, Cat. # 12-543D](https://www.fishersci.com/shop/products/fisherbrand-cover-glasses-rectangles-rectangles-no-2-thickness-0-17-0-25mm-size-50-x-24mm/12543d) since we had it, and it should be slightly stronger.
* 3 x [50 ohm resistors](https://www.digikey.com/products/en?keywords=696-1178-ND)
* 2 x [10k thermistors](https://www.digikey.com/products/en?keywords=223-1540-ND)
* [TE Technology TC-48-20](https://tetech.com/product/tc-48-20/) controller
* 12V power supply (many options, I think I got [this one](https://tetech.com/product/ps-12-8-4a/))
* 5 minute epoxy glue
* [4.75mm acrylic](https://www.mcmaster.com/#8505k727/=19ecwx1)
* [3mm acrylic](https://www.mcmaster.com/#8505k722/=19ecxt9)
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
* [0.015" Poly-Urethane](https://www.mcmaster.com/#1446T11)



#Assembly and construction

* Put a tiny bit of thermal paste on the metallic side of the resistors and screw them on the ASI sample holder, using the longer thumb screws rather than provided thumb screws that are too short for the resistors.  Wipe away any excess thermal paste.
* Connect the resistors using 18 gauge electrical wire (I scavenged some from an eletrical mains cable).  The wire should not be too thin, since the load is about 0.72A).  Hook up the resistors in parallel.  Connect the end to a male RC10 connector.  Connect a femail RC10 connector to the output of the TE Controller.  Make sure to cover all conductive materials with heat shrink tubing (I use the soldering iron itself to shring the tubing). 
* Solder  each of the thermistors to 24gauge 2-stranded wire (polarity does not matter). Combine the 4 wires in a plug male crimp connector.  Connect the femail crimp connector to the TE controller.  Make sure that the thermistor in the center is seen by the controller as the main thermistor, and the one on the side as the safety thermistor.
* 


