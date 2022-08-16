---
title: Barcode Scanner
weight: 60
# geekdocNav: false
# geekdocAlign: center
# geekdocAnchor: false
resources:
  - name: barcode_1
    src: 'barcode_1.jpg'
    title: Initial Screen
  - name: barcode_2
    src: 'barcode_2.jpg'
    title: Barcode scanner plugin
  - name: barcode_3
    src: 'barcode_3.jpg'
    title: Verify order
  - name: barcode_4
    src: 'barcode_4.jpg'
    title: Begin adding photos to batch
  - name: barcode_5
    src: 'barcode_5.jpg'
    title: Camera plugin
  - name: barcode_6
    src: 'barcode_6.jpg'
    title: Review photos before uploading
---

## Tech

{{< columns >}} <!-- begin columns block -->

### Front End

- Angular
- Ionic
- RxJS
- Typescript

<---> <!-- magic separator, between columns -->

### Back End

- MySQL
- PHP

{{< /columns >}}

## Problem

A manufacturing company I worked for wanted a way to definitively associate photos with orders. There was no existing process for this. If customers claimed parts were missing or damaged, they had to way to prove otherwise.

## Solution

There was initial talk about using a plain digital camera as part of the solution, but I felt that a process involving this would have required way too many manual steps. I already knew Angular quite well and had heard about Ionic which could be used to create Android and iOS apps from Angular apps. So what about an app that would essentially turn a tablet into a smarter digital camera? Luckily, upon investigating I found that there was a barcode scanner plugin for Ionic.

Before taking photos, the user would first scan the order barcode to let the app know which order the photos belonged to. After taking the photos they get uploaded to the PHP backend along with the order number. A photo entity for each photo is then inserted into the database. At this point it becomes trivial to display a list of photos when they look up an order.

{{< columns >}}
{{< img name="barcode_1" size="tiny" lazy=true >}}
<--->
{{< img name="barcode_2" size="tiny" lazy=true >}}
{{< /columns >}}

{{< columns >}}
{{< img name="barcode_3" size="tiny" lazy=true >}}
<--->
{{< img name="barcode_4" size="tiny" lazy=true >}}
{{< /columns >}}

{{< columns >}}
{{< img name="barcode_5" size="tiny" lazy=true >}}
<--->
{{< img name="barcode_6" size="tiny" lazy=true >}}
{{< /columns >}}
