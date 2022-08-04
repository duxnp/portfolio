---
title: Configurator
# geekdocNav: false
# geekdocAlign: center
# geekdocAnchor: false
resources:
  - name: configurator
    src: 'configurator.jpg'
    title: Configurator
---

[Live Website](http://www.hmidoors.com/configurator){{< icon "gdoc_link" >}}

{{< hint type=note >}}
**This website features guest access.**\
You can play around on it as much as you want!
{{< /hint >}}

{{< img name="configurator" size="small" lazy=false >}}

## Tech

{{< columns >}} <!-- begin columns block -->

### Front End

- AngularJS
- Javascript
- Bootstrap 3
- Grunt

<---> <!-- magic separator, between columns -->

### Back End

- PHP
- MySQL
- Adobe Photoshop

{{< /columns >}}

## Problem

A manufacturing company I worked for wanted a tool to allow customers and homeowners to play with door options and get a realistic preview rendered. Other tools like this existed in the industry, but this company didn’t have their own tool yet. Customers would often cite this a reason to switch to another manufacturer.

## Solution

### App

A complex, responsive, mobile friendly form was created with AngularJS. This lets the user choose options such a door style, door color, etc. When a form change is detected, the selected options are sent to the backend. The backend then runs an image compositing script to pull various image assets together into a single image. This image is then returned to the front end.

### Image Assets

A significat portion of the development involved creating the image assets to support the compositing script. I didn't have access to a competent photographer or graphic designer, so I had to wear multiple hats for this project.

Hardware images (locks, hinges, etc.) provided to us by hardware vendors were rarely taken from the correct perspective. I had to take photos of all the hardware mounted on a sample door.

Glass images provided to us by glass vendors came in a variety of image formats, sizes, and aspect ratios. A fairly advanced Photoshop script was written to normalize the images to a predictable format and size.

Parts of the door unit that get painted needed a corresponding image asset for each paint color we offered. The assets would beging as neutral grayscale images then get colorized by another fairly advanced Photoshop script.
