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

{{< img name="configurator" size="small" lazy=false >}}

## Tech

{{< columns >}} <!-- begin columns block -->

### Front End

- AngularJS
- Javascript
- Grunt

<---> <!-- magic separator, between columns -->

### Back End

- PHP
- MySQL

{{< /columns >}}

## Problem

A manufacturing company I worked for wanted a tool to allow customers and homeowners to play with door options and get a realistic preview rendered. Other tools like this existed in the industry, but this company didn’t have their own tool yet. Customers would often cite this a reason to switch to another manufacturer.

## Solution

A complex, mobile friendly form was created with AngularJS. This lets the user choose options such a door style, door color, etc. When a form change is detected, the selected options are sent to the backend. The backend then runs an image compositing script to pull various image assets together into a single image. This image is then returned to the front end.
