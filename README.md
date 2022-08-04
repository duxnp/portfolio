# Portfolio

This is the repository for my personal portfolio website.

## Problem

I needed to throw together a portfolio site. How to create and deploy it is the question! LAMP stack’s days are numbered! This is how I developed websites for a long time (since PHP 3):

- Set up a local Linux server with Apache, MySQL, and PHP installed.
- Create a bunch of PHP files.
- Upload the site to a web server via FTP by dragging and dropping.
- Profit.

“Deploying” sites this way just felt wrong after a while. One solution is to upload files to some staging folder, then switch the public folder symlink after all the files are uploaded. Still, there is tooling out there these days to make deployment even easier.

## Solution

I’d heard about [Jamstack](https://jamstack.org) and static site generators for a while, but didn’t really have a reason to try out these concepts until now.

[Hugo](https://gohugo.io/) is a highly rated static site generator renowned for its blazing fast speed. I figured I’d give it a try.

Mathias Biilmann, cofounder of [Netlify](https://www.netlify.com), gave a great [talk](https://vimeo.com/163522126) in 2016 presenting the history of the LAMP stack and the benefits of the Jamstack. Ok, I’ll give Netlify a try.

It all turned out to be pretty simple. In just a couple days I had a site up and running with the help of a Hugo theme. It was unclear at first whether it would be better to create a Github action to deploy the site or have Netlify handle that. The theme I chose offered guidance on how to instruct Netlify to build the site, so I chose that option.

The source code is in a Github repository. The Netlify site monitors the Github repository. Whenever Netlify detects a commit has been made to the main branch, it pulls the source, builds the site with Hugo, then deploys the files.
