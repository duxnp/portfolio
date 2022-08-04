---
title: Product Labels
# geekdocNav: false
# geekdocAlign: center
# geekdocAnchor: false
resources:
  - name: labels-box
    src: 'labels-box.jpg'
    title: Box Label
  - name: labels-serial-number
    src: 'labels-serial-number.jpg'
    title: Serial Number Label
---

## Tech

- C#
- Microsoft SQL Server
- SAP Crystal Reports
- Zebra Direct Thermal Label Printer
- Zebra Thermal Transfer Label Printer

## Problem

This company needed a way to more easily attach order information to things to track manufactured items. The vast majority of items manufactured are custom orders, so it's very important to identify that a particular item belongs to a particular order. They wanted a small serial number label for the item itself, and larger, more complete order label for the cardboard box the item would be packaged in.

They had an existing process, but it was fairly labor intensive and sometimes wasteful. Also, they did not previously produce serial number labels. They only printed box labels. The old process involved 8.5" x 11" sheets of Avery shipping labels with 4 labels per sheet. They had a report to format the labels, but they had to manually type in each order number each time the report was run. If the number of labels was not a multiple of 4, they would waste labels.

## Solution

### Box Label

For this label, we selected a Zebra Direct Thermal Label Printer and rolls of 4" x 6" direct thermal labels. These labels did not need to be long lived as they were only used to identify the item as it sat in the warehouse waiting to be picked up or shipped. Direct thermal label printers are cheaper and easier to maintain since there is no ink to manage. The heat activated "ink" is built into the paper.

Their database already had all the required order information. We used Crystal Reports to select the data from the database and place it on the page.

{{< img name="labels-box" size="tiny" lazy=true >}}

### Serial Number Label

Technically this was a subsequent project after the box label project was successful. Customers calling in for warranty repairs would often have no idea what model their product was or how old it was. Serial number labels were needed.

Since there was already a system and procedure in place for printing box labels, it wasn't much more work to add a second label printer to print a label with a different format. For this label, we selected a Zebra Thermal Transfer Label Printer and custom rolls of 1" x 4.25" coated labels with a color logo pre-printed on each label. These labels DID need to be long lived and durable. During testing, we found that heat would eventually turn the direct thermal labels completely black over time, like a sales receipt left in a hot car. Thermal transfer label printers use a wax ribbon as the "ink". When the label is printed, the wax is transferred from the ribbon and fused to the label. It's resistant to heat, moisture, and abrasion.

{{< img name="labels-serial-number" size="medium" lazy=true >}}
