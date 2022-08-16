---
title: Sliding Door Form
weight: 40
# geekdocNav: false
# geekdocAlign: center
# geekdocAnchor: false
resources:
  - name: sliding-error-qty
    src: 'sliding-error-qty.jpg'
    title: Validation Error Quantities

  - name: sliding-invalid
    src: 'sliding-invalid.jpg'
    title: Invalid Selection

  - name: sliding-valid
    src: 'sliding-valid.jpg'
    title: Valid Selection
---

## Tech

{{< columns >}} <!-- begin columns block -->

### Front End

- Angular
- Typescript
- Nx

<---> <!-- magic separator, between columns -->

### Back End

- PHP
- MySQL

{{< /columns >}}

## Problem

This is a continuation of the Online Ordering Facelift project. Sliding doors were a new product that had been developed since I had taken over maintaining this site. As such, a new order form had to be added for sliding doors. A complaint about the existing forms is that you could not open a quote at a later time to edit it. The original programmers had never figured out a way to repopulate form values from an existing quote. I was determined to do things differently.

## Solution

Since they still weren’t too keen on allowing me to reprogram the entire site yet, I had to implement this as an Angular app that ran along side the original site. When the user requested to add a sliding door to their quote, the site would pretty seamlessly pass things off to the Angular app. The Angular app would present the form to the user. When the user was finished selecting options, the Angular app would pass things back to the original site.

This app has fairly complex form validation. Since not every option is compatible with every other option, sometimes form control validation has to be done by comparing values from multiple controls.

{{< img name="sliding-valid" size="small" lazy=true >}}
{{< img name="sliding-invalid" size="small" lazy=true >}}

Controls are also grouped into multiple tabs. To make it easier for the user to navigate to the errors, the app adds up the quantity of validation errors on each tab and displays that number in a badge on each tab.

{{< img name="sliding-error-qty" size="small" lazy=true >}}
