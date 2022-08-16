---
title: Market Sharp
weight: 110
resources:
  - name: ui
    src: 'market-sharp-canvasser-payroll.jpg'
    title: Payroll UI
  - name: report
    src: 'market-sharp-jane-doe.jpg'
    title: Crystal Report
---

## Tech

- C#
- SAP Crystal Reports
- MarketSharp API

## Problem

A client of mine runs a home improvement business. Aside from running advertisements, one method they use to bring in additional business is to send canvassers door to door. They provide a variety of bonuses to their canvassers to reward better performance. Appointment data is kept in MarketSharp (similar to Salesforce). Their initial process for calculating canvasser payroll was to export data from MarketSharp for a certain time period to Excel. After that it was a very manual, error prone process of sorting rows, creating sum formulas, and in some cases manual tallying. The data and bonus criteria was so complex it would take someone an entire day to calculate payroll for a handful of canvassers.

## Solution

Fortunately, MarketSharp offers an API that allows customers to fetch data from their account into .net apps. The C# app I developed fetches this data, massages it a bit, then delivers it to a Crystal Report in a typed dataset. The user has the option to view a single report in a report viewer window, or to batch export all payroll reports to separate PDF files. A process that took maybe 8 hours before now takes maybe 8 minutes.

{{< img name="ui" size="large" lazy=true >}}

{{< img name="report" size="small" lazy=true >}}
