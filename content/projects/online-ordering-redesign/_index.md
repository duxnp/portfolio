---
title: Online Ordering Redesign
---

{{< hint type=note >}}
**This project is still in development.**\
The Github repos are currently private.
{{< /hint >}}

## Tech

{{< columns >}}

### Front End

- Angular
- Bootstrap 5
- NgRx
- RxJS
- Typescript

<--->

### Back End

- Laravel
- MySQL
- PHP

<--->

### Dev Tooling

- Docker
- Git
- Laravel Sail
- NPM
- Nx
- VS Code Dev Container

{{< /columns >}}

## Problem

This company's existing website has some problems:

- Poor architecture and programming
  - OK if you’re making a smaller website, but does not scale well
  - Can’t share logic with a mobile app version
  - Difficult for devs to collaborate
- Bad authentication design
  - Customer service does not have their own logins
  - Passwords are stored unencrypted as plain text
  - Nearly impossible to add an API
- Separate cost and retail sites each with their own databases
  - Customers would be confused about logging in to two different sites
  - Makes it much more difficult to create an API
  - Makes it much more confusing for a person trying to use an API

In addition to these problems, customers have been requesting additional features:

- Mobile app version
- API access to quote information
- Better quote editing capability

## Solution

To solve the architecture and authentication problems I chose Angular for the front end and Laravel for the back end. To assist with collaboration I chose Laravel Sail and Github.

### Angular

Client side frameworks like Angular provide tools to help manage form state. This will make it much easier to allow existing quotes to be edited. Technologies like Ionic and NativeScript offer ways to program an app with Angular then compile a native mobile app.

#### OnPush Change Detection

By default, a new Angular project uses automatic change detection when updating the DOM with new values. This is like Angular easy mode. It means value changes are pretty much always reflected in the DOM. It comes at a cost though. If your template requires any functions to run, those functions can run several times each change detection cycle. Previous Angular projects I worked on used this change detection strategy and it did raise some performance concerns.

For this new project I wanted all components to use OnPush as the change detection strategy. OnPush has a much more strict set of conditions that will trigger the DOM to update. Therefore, it is much more efficient.

### Laravel

Laravel provides authentication and end point routing out of the box. This will allow the site to have a more modern, secure authentication system and make it much easier to configure back end resources on the front end.

#### Multi Table Inheritance (Polymorhpic Relationships)

Regarding the database schema design, one thing I wanted to improve over the original design was to use polymorphic relationships on the back end. For example, products can belong to a quote, but not every product type has the same properties. When using a single table in this situation, you end up with many null fields. If you’d like to avoid this, Eloquent (included with Laravel) allows you to define polymorphic relationships in the model classes. One table would include all the common fields, and other tables would each contain fields unique to the different product types. When retrieving the polymorphic relationship from the parent, Eloquent will automatically retrieve the rest of the fields from the correct table.

This also more closely maps to how classes would be defined in which child classes for each type would extend and inherit from a parent class. One nice thing about using Angular as a front end is that since it’s written in Typescript you can take advantage of Typescript’s advanced type system. You can create classes that inherit from other classes to accurately represent the back end models.

### Collaboration

I also took this opportunity to explore better ways for devs to collaborate. This is where Docker and Laravel Sail come in. One way to allow devs to collaborate more efficiently is to provide easily reproducable dev environments.

The Angular front end project is in one Github repo. To get this project up and running on a local machine, you simply clone the repo then run npm install. (Assuming Git and Node are installed.)

The Laravel back end project is in another Github repo. To get this project up and running on a local machine, you clone the repo then open the folder in VS Code. VS Code will detect the presence of a dev container definition and ask if you want to reopen the folder in a remote dev container. Then you run the database migrations. Truth be told there are a few other commands that need to be run, but they are all easily reproducable.

Also, both Angular and Laravel are opinionated frameworks, which I'm imagining would help reduce the amount of time a team of developers has to spend to create their own style guide.
