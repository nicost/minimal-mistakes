---
layout: general 
excerpt: "Micro-Manager 2.0 gamma"
author: nico
share: off
tags: [Microscopy, microscope control software]
excerpt: "Various Protocols and Recipes"
image:
  feature: LaserSpeckles.jpg
  credit: Nico Stuurman
  creditlink: http://valelab.ucsf.edu/~nstuurman
---
***Micro-Manager Information*** 



<ul>
   <li class="limm"><a href="https://micro-manager.org">Main Micro-Manager website</a></li>
   <li class="limm"><a href="https://valelab.ucsf.edu/~nico/mm2gamma">Download 2.0-gamma</a></li>
   <li class="limm"><a href="https://valelab.ucsf.edu/~nico/fom">2.0-gamma presentation at FOM 2018 in Singapore</a></li>
   {% for post in site.categories.micro-manager %}
   <li>
      <a href="{{ site.url }}{{ post.url }}">{{ post.title }}</a>
      {{ post.excerpt }}
   </li>
   {% endfor %}
</ul>

