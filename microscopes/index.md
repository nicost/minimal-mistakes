---
layout: microscope-index
excerpt: "Vale lab microscopes"
author: microscope
tags: [Microscopy, microscope control software, molecular motors]
modified: 2015-11-25T13:23:02.362000-04:00
excerpt: "Overview of the microscopes in the Vale lab and the components they contain."
image:
  feature: LaserSpeckles.jpg
  credit: Nico Stuurman
  creditlink: http://valelab.ucsf.edu/~nstuurman
---
***Microscopes in the Vale lab*** 

<ul>
   {% for post in site.categories.microscope %}
   <li>
      <a href="{{ site.url }}{{ post.url }}">{{ post.title }}</a>
      {{ post.excerpt }}
   </li>
   {% endfor %}
</ul>

