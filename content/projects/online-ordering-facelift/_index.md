---
title: Online Ordering Facelift
# geekdocNav: false
# geekdocAlign: center
# geekdocAnchor: false
geekdocToC: 3
resources:
  - name: oo-create-new
    src: 'oo-create-new.jpg'
    title: New Create Quote
  - name: oo-create-old
    src: 'oo-create-old.jpg'
    title: Old Create Quote
  - name: oo-form-new
    src: 'oo-form-new.jpg'
    title: New Quote Form
  - name: oo-form-old
    src: 'oo-form-old.jpg'
    title: Old Quote Form (Yes, you had to scroll horizontally)
  - name: oo-invoice-new
    src: 'oo-invoice-new.jpg'
    title: Old Invoice
  - name: oo-invoice-old
    src: 'oo-invoice-old.jpg'
    title: New Invoice
  - name: oo-login-new
    src: 'oo-login-new.jpg'
    title: New Login
  - name: oo-login-old
    src: 'oo-login-old.jpg'
    title: Old Login
  - name: oo-orders-new
    src: 'oo-orders-new.jpg'
    title: New Orders List
  - name: oo-orders-old
    src: 'oo-orders-old.jpg'
    title: Old Orders List
---

[Live Website](https://www.hmidoors.net){{< icon "gdoc_link" >}}

{{< hint type=note >}}
**Only authorized dealers have access to this website**\
You will be able to see the login page, but not do much else.
{{< /hint >}}

## Tech

- Bootstrap 4
- Javascript
- PHP

## Problem

This company has a website that had been programmed by several other programmers over the years. It has severy very complex forms used to create quotes for manufactured products. The website worked most of the time, but there were many complaints that it was ugly and difficult to use. The architecture and code quality were extremely poor. Ideally, the site should be reprogrammed from scratch with modern day best practices in mind. However, that idea was frowned upon due to how long it would take.

## Solution

A stopgap solution involving HTML and CSS refactoring was approved. All HTML for the site was refactored to apply Bootstrap 4 classes to all relevant DOM elements while preserving any existing Javascript functionality. Regressions are of course always (usually?) undesired. This alone made the site vastly more pleasing to use.

{{< columns >}}
{{< img name="oo-login-old" size="medium" lazy=true >}}
<--->
{{< img name="oo-login-new" size="medium" lazy=true >}}
{{< /columns >}}

{{< columns >}}
{{< img name="oo-orders-old" size="medium" lazy=true >}}
<--->
{{< img name="oo-orders-new" size="medium" lazy=true >}}
{{< /columns >}}

{{< columns >}}
{{< img name="oo-create-old" size="medium" lazy=true >}}
<--->
{{< img name="oo-create-new" size="medium" lazy=true >}}
{{< /columns >}}

{{< columns >}}
{{< img name="oo-form-old" size="medium" lazy=true >}}
<--->
{{< img name="oo-form-new" size="medium" lazy=true >}}
{{< /columns >}}

{{< columns >}}
{{< img name="oo-invoice-old" size="medium" lazy=true >}}
<--->
{{< img name="oo-invoice-new" size="medium" lazy=true >}}
{{< /columns >}}
