---
title: Calendar
# geekdocNav: false
# geekdocAlign: center
# geekdocAnchor: false
resources:
  - name: bcal-android
    src: 'bcal-android.jpg'
    title: Android
  - name: bcal-ios
    src: 'bcal-ios.jpg'
    title: iOS
  - name: bcal-merge-workflow-1
    src: 'bcal-merge-workflow-1.jpg'
    title: Build and Deploy In Progress
  - name: bcal-merge-workflow-2
    src: 'bcal-merge-workflow-2.jpg'
    title: Build and Deploy In Progress
  - name: bcal-pr-workflow-1
    src: 'bcal-pr-workflow-1.jpg'
    title:
  - name: bcal-pr-workflow-2
    src: 'bcal-pr-workflow-2.jpg'
    title: PR Workflow In Progress
  - name: bcal-pr-workflow-3
    src: 'bcal-pr-workflow-3.jpg'
    title: Workflow Complete!
  - name: bcal-cypress
    src: 'bcal-cypress.jpg'
    title: Cypress E2E Test Run
  - name: bcal-jest
    src: 'bcal-jest.jpg'
    title: Jest Unit Test Run
---

{{< columns size="large" >}}
[Live Website](https://beluvian-calendar.web.app){{< icon "gdoc_link" >}}

## Tech

- Angular
- Nx
- NgRx
- Jest
- Cypress
  <--->
  {{< toc format=[html] >}}
  {{< /columns >}}

This app came about after a friend and I joked about what it would be like if our calendar had no months, just 365 to 366 days. So the Beluvian calendar was created. Parts of it are inspired by the Gregorian calendar.

- The grid used to display it has 7 columns although even I'm not really sure if weekends exist in this fictional world.
- There is a leap day in place of where February 29th would be on a Gregorian calendar. It has its own name and only shows up on leap years.

It turned out to be a very good programming excercise to learn how to deal with dates using ~~Moment.js~~ Luxon.

## Calendar Comparison

{{< columns >}}

### Gregorial Calendar

- 12 named months
- 7 named days
- 28 to 31 days per month
  <--->

### Beluvian Calendar

- No separate named months
- No Monday - Friday
- 365 to 366 days per year each with its own name
  {{< /columns >}}

## Nx-ification

b-cal was originally created in a standard single app Angular project created with the Angular CLI. Some time after that I became interested in learning a bunch of new technologies related to Angular. Some of those being Nx monorepos, NgRx state management, and Ionic.

I brought the original b-cal project into this workspace then refactored it into the different workspace library types Nrwl recommends.

## Mobile Version

One of the many benefits of using a monorepo is code sharing between apps. I created a mobile version with Ionic to see how code sharing between a web and mobile version would work.

Here is an example of the folder structure:

```
├─ apps
│  ├─ b-cal-mobile
│  └─ b-cal-web
└─ libs
   └─ b-cal
      └─ year
         ├─ mobile
         │  ├─ feature
         │  └─ ui
         ├─ shared
         │  ├─ data-access
         │  └─ util
         └─ web
            ├─ feature
            └─ ui
```

{{< columns >}}
{{< img name="bcal-ios" size="tiny" lazy=true >}}
<--->
{{< img name="bcal-android" size="tiny" lazy=true >}}
{{< /columns >}}

## Unit, Integration, and E2E Testing

Before I started working on this project, I had some experience unit testing Angular apps with Jasmine and Karma. I needed to brush up my knowledge as well as try more modern test runners. For unit testing the Angular components I used Jest. For end to end testing I used Cypress.
{{< columns >}}
{{< img name="bcal-jest" size="medium" lazy=true >}}
<--->
{{< img name="bcal-cypress" size="medium" lazy=true >}}
{{< /columns >}}

## Deployment

### Deploying to Firebase

If you wanted to deploy the project from your local machine, you could run the following commands.

```shell
$ npm install -g firebase-tools
$ firebase login
$ firebase deploy -P b-cal --only hosting --config firebase.b-cal.json
```

I wanted to try something fancier though...

### Deploy via Github Actions

One can take advantage of having a full suite of unit tests by creating CI/CD workflows that pay attention to the test output. I set up one Github action that is triggered by pull requests, and one that is triggered by merging to the main branch.

#### Pull Request

When a pull request is created for a branch, the action builds the app in that branch then runs all the unit tests. All the unit tests must pass before the branch can be merged to the main branch.

{{< columns >}}
{{< img name="bcal-pr-workflow-2" size="medium" lazy=true >}}
<--->
{{< img name="bcal-pr-workflow-3" size="medium" lazy=true >}}
{{< /columns >}}

#### Merge

When a pull request is merged to the main branch, a different action runs which is similar to the first. There is an additional step at the end though that deploys the build artifacts to hosting.

{{< columns >}}
{{< img name="bcal-merge-workflow-1" size="medium" lazy=true >}}
<--->
{{< img name="bcal-merge-workflow-2" size="medium" lazy=true >}}
{{< /columns >}}
