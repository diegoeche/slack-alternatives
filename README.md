# Slack Alternatives

So slack is costly, centralized and way too necessary for your organization. Maybe
you want to move to an open source alternative or you want to make sure your super
important info is not being read by 3rd parties. This repository contains some
docker-compose files so you can try some of the open-source alternatives to Slack.

## TL;DR ##

Some bullet-points about licenses/costs of each solution:

<table>
    <tr>
        <th>#</th> <th>Chat</th> <th>AD Integration</th> <th>Extensible</th>
    <th>Documentation</th> <th>Tech</th> <th>License</th> <th>Mobile</th> <th>Cost</th>
    </tr>
    <tr>
        <td>1</td>
        <td>Rocket.Chat</td>
        <td>
        <a href="https://forums.rocket.chat/t/kerberos-authentication-ldap-single-sign-on/653/3">Yes</a>
        </td>
        <td>✓</td>
        <td>Good</td>
        <td>JS/Meteor</td>
        <td>MIT</td>
        <td>✓</td>
       <td>Free/BYOS</td>
    </tr>
    <tr>
        <td>1</td> <td>Mattermost</td> <td>AD/LDAP</td> <td>✓</td> <td>Good</td>
        <td>Golang-React</td> <td>MIT</td> <td>✓</td>
        <td>Free/BYOS</td>
    </tr>
    <tr>
        <td>2</td> <td>Zulip</td> <td>YES</td> <td>✓</td> <td>Ok</td> <td>Python</td>
    <td>Apache License 2.0</td> <td>✓</td> <td>Free/BYOS</td>
    </tr>
    <tr>
        <td>2</td> <td>MS Teams</td> <td>YES</td> <td>✓</td> <td>Good</td>
    <td>N/A</td> <td>Commercial</td> <td>✓</td> <td>Depends</td>
    </tr>
    <tr>
        <td>2</td> <td>Gitter</td> <td>Not Clear</td> <td>with API</td> <td>Good</td> <td>N/A</td> <td>Commercial</td><td>✓</td> <td>SaaS</td>
    </tr>
    <tr>
        <td>2</td> <td>Flowdock</td> <td>Not Clear</td> <td>✓</td> <td>Good</td>
    <td>N/A</td> <td>Commercial</td> <td>✓</td> <td>SaaS</td>
    </tr>
    <tr>
        <td>4</td> <td>Matrix</td> <td>No</td> <td>Not Clear</td> <td>Ok</td>
    <td>Node.js</td> <td>MIT</td> <td>No</td> <td>Free/BYOS</td>
    </tr>
    <tr>
        <td>4</td> <td>Wire</td> <td>No</td> <td>Not Clear</td> <td>Insufficient</td> <td>N/A</td> <td>GNU AFFERO</td><td>✓</td> <td>SaaS/OS</td>
    </tr>
    <tr>
        <td>5</td> <td>Let's Chat</td> <td>YES</td> <td>X</td> <td>Minimum</td>
    <td>Node.js</td> <td>MIT</td> <td>No</td> <td>Free/BYOS</td>
    </tr>
</table>

## Testing Some Options:

To test yourself the options just call the `start.sh` command in the
repository. `docker-compose` is required!

```
docker-compose -f rocketchat.yml up # Available at: localhost:3000
docker-compose -f mattermost.yml up # Available at: localhost:8065
docker-compose -f letschat.yml up   # Available at: localhost:8080
```

## Options without demos:

* zulip
* matrix

### [Rocket Chat](https://rocket.chat/)

SaaS and self-hosted chat service written in NodeJS. Plugins for Pidgin/Drupal
available but also iOS/Android/Desktop.

Provides Webhook support, but also Hubot and other integrations like Google Calendar
and Zapier.

<img
src="https://opensource.com/sites/default/files/uploads/slack-alternatives-rocketchat.png"
style="width: 70%"/>

### Users:

Canonical, SteadyMD, Lisk, AEB (Brazilian Space Agency), Southeastern

### [Mattermost](https://mattermost.com/)

SaaS with self-hosted "Team" option that is free. Is written in Golang, and works
through a fremium model. AD integration is part of their "Enterprise" package at
39/user/year.

They have over 131 integrations including Hubot and Zapier.

Mobile(iOS & Android) Desktop (Linux, Windows, Mac) clients available

For administration, [they support a CLI](https://docs.mattermost.com/administration/command-line-tools.html#mattermost-roles)

There's an experimental feature for default channels a user should be added to:
https://docs.mattermost.com/administration/config-settings.html#default-channels-experimental


<img src="https://opensource.com/sites/default/files/uploads/slack-alternatives-mattermost_0.png" style="width: 70%"/>

### Users:

Samsung, Virgin, DOD, Bristol-Myers Squibb, SAS, CERN

### [Zulip](https://zulipchat.com/)

Python open source group chat application with real-time chat and threaded
conversations. All installation is around Ubuntu.

It's extensible and provides over [90 native
integrations](https://zulipchat.com/integrations/) Including IFTTT/Zapier/Hubot.

They have a [Mobile App](https://github.com/zulip/zulip-mobile) written in
React-Native for both Android and iOS

<img
src="https://cdn.slant.co/b3cd3fe2-8992-46b7-9a7f-2afdbc76bd5e/-/format/jpeg/-/progressive/yes/-/preview/2048x2048/"
style="width: 70%"/>

### Users:

Akamai, dr on demand, LevelUp, RecurseCenter, Panjiva, Layershift, SolanoLabs, Veelo


## [Microsoft Teams](https://products.office.com/en-au/microsoft-teams/group-chat-software)

Microsoft's solution for real-time collaboration including chat and video-conferencing.

Many apps are provided including
[Hubot](https://github.com/Microsoft/BotFramework-Hubot) and
[others](https://products.office.com/en-us/microsoft-teams/apps)

Clients for iOS/Android Desktop Windows and OSX provided.

Pricing oscillates between 8USD/month and 35usd/month. But there are other plans and
it migth be already included with Office 365. [Special prices for education orgs
apply](https://products.office.com/en-us/academic/compare-office-365-education-plans)

<img
src="https://c.s-microsoft.com/en-au/CMSImages/Hero_MSTeams_HP_960x600px.png?version=8e41c95a-ed34-24e0-c359-cb5f70e897dd"
style="width: 70%"/>

### Users:

https://stackshare.io/microsoft-teams

## [Wire](https://wire.com/en/)

Communication service focused on security. It's cost is as low as 4USD/USER/Month and
although they have their [Backend
Open-Sourced](https://github.com/wireapp/wire-server) there's no documentation on how
to run it.

It provides Mobile apps for Android/iOS/Linux/Windows/Browser. The clients are also
Open Source.

There are no extensions available.

### Users:

N/A

## [Gitter](https://gitter.im/)

Commercial Chat solution with clients for iOS, Linux, Mac, Windows.

It has a SaaS business model with the low price of 5usd/user. But also offers a free
plan.

There are [some integrations
available])(https://gitlab.com/gitlab-org/gitter/webapp/blob/master/docs/integrations.md)

### Users:

Airbnb, AWS, Google, Microsoft, Mozilla Science Lab, Rails, Scala [and more](https://stackshare.io/gitter)

## [Flowdock](https://www.flowdock.com/)

Commercial communication solution from CA with clients for OSX, iOS, Android and
Windows.

Provides integration with [other third party
apps](https://www.flowdock.com/integrations).

The cost is as low as 3/USD/USER/Month

### Users:

N/A

### [Let's Chat](http://sdelements.github.io/lets-chat/)

NodeJS MIT licensed chat. Focused on small groups and with basic integrations for
Hubot and authentications services like Kerberos, LDAP. The project is not actively
developed nor maintained

There isn't a native application for iOS nor Android. Only browser support.

<img src="https://opensource.com/sites/default/files/uploads/slack-alternatives-letschat.png" style="width: 70%"/>

### Users:

N/A

### [Matrix](https://matrix.org/blog/home/)

Matrix is a network for descentralized communication. It specifies a set of RESTful
HTTP JSON APIs as an open standard and different clients support such
specification. One of the clients is the [Riot.IM messaging](https://about.riot.im/)

<img
src="https://opensource.com/sites/default/files/uploads/slack-alternatives-riot.png"
style="width: 70%"/>

### Users:

Mozilla, Ericsson, Amdocs, Deutsche Telekom, Thales

## Sources #

* [opensource.com](https://opensource.com/alternatives/slack)
* [Slant](https://www.slant.co/topics/4554/~open-source-alternatives-to-slack)
* [Awesome Self-Hosted](https://github.com/Kickball/awesome-selfhosted)
