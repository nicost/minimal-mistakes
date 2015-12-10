---
layout: page
tags: [Microscopy, microscope control software, molecular motors]
share: false
modified: 2015-11-25T13:23:02.362000-04:00
excerpt: "Overview of the microscopes in the Vale lab and the components they contain."
image:
  feature: LaserSpeckles.jpg
  credit: Nico Stuurman
  creditlink: http://valelab.ucsf.edu/~nstuurman
---
***Various software*** 


* [Nico's ImageJ plugins (old)](http://valelab.ucsf.edu/~nstuurman/ijplugins/)
* [Image/Fiji SAIM plugin](http://fiji.sc/Saim)
* [Image/Fiji Spot Intensity analysis](http://fiji.sc/Spot_Intensity_Analysis)
* [Image/Fiji Spot Counter](http://fiji.sc/)
* [Micro-Manager](http://micro-manager.org)

***Other things***

* [Some of Nico's 'images'](http://valelab.ucsf.edu/~nstuurman/images/)
* [Nico on Github](http://github.com/nicost)


<ul>
   {% for post in site.categories.various %}
   <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
      {{ post.excerpt }}
   </li>
   {% endfor %}
</ul>

