---
layout: protocols
excerpt: "Protocols and Recipes"
author: microscope
share: off
tags: [Microscopy, microscope control software, molecular motors]
modified: 2015-11-25T13:23:02.362000-04:00
excerpt: "Various Protocols and Recipes"
image:
  feature: LaserSpeckles.jpg
  credit: Nico Stuurman
  creditlink: http://valelab.ucsf.edu/~nstuurman
---
***Protocols and Recipes*** 



<ul>
   {% for post in site.categories.protocols %}
   <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
      {{ post.excerpt }}
   </li>
   {% endfor %}
</ul>

