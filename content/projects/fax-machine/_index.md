---
title: Fax Machine
weight: 100
resources:
  - name: fax-machine
    src: 'fax-machine.jpg'
    title: Custom Fax UI
---

## Tech

- C#
- FaxTalk Multiline Server
- FaxTalk SDK
- TwainDotNet

### Problem

A company I worked for still has, believe it or not, many customers who still prefer receiving paperwork via fax. They of course had a standard fax machine, but it did not have easy to use call logs and fax numbers had to be entered by hand. They had older fax software, but it had a few shortcomings as well. It did not have built in support for scanner input to build the fax job from scanned pages. For various reasons, relevant information would not exist in the digital version so scanning pages was an important feature. It had an address book to store fax numbers but it had to be maintained manually. This all added up to a significant amount of time being wasted.

### Solution

After some research, I found a program called FaxTalk Multiline Server which also came with a .net SDK. This allowed me to create a C# app that could look up customer information from a SQL database, receive page images from a document scanner, then submit a job to the FaxTalk API. The FaxTalk Server would handle the rest. If a fax number was provided, it faxes it via fax modem. If an email address was provided, it hands it off once more to Thunderbird to send out with the scanned pages attached as a PDF.

{{< img name="fax-machine" size="small" lazy=true >}}
