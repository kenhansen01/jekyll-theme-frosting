---
title: "AdminPowershell: Powershell tools I use"
header:
  image: assets/images/tortoise.jpg
  caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
tags:
  - table of contents
toc: true
toc_label: "Neat Shells"
toc_icon: "heart"
---

I come across a lot of reasons to write up different PowerShell functions/scripts/modules.

## How to use.
Open powershell ISE, run the function to load it and then call the function with whatever parameters you need. The Search Instance script needs to be run on a SharePoint Server. These are all written in a way that would make them easy to export modules from.

## The files.
Without further ado...

### Close-ServerSessions
I work for a fairly large corporation, manage a not insignificant number of server, and have to change my password every 90 days. Sometimes, I would change my password and not be fully signed out of some obscure server somewhere. This server would attempt to refresh my credentials until my account was locked. Then I get to call the helpdesk, unlock and quickly try to find the offending server.
That was exausting. Now I use this function.
[Close-ServerSession](https://github.com/kenhansen01/AdminPowershell/blob/master/Close-ServerSession.ps1)

### Move-Repos
This is fairly specific. It is something I wrote to move repos from one TFS (Azure DevOps) Collection to another. It uses the VSTS cli. This is deprecated in favor of Azure cli, but I’m working on-premise. It shouldn’t be that hard to reconfigure for Azure cli.
The most valuable part of this is how to parse the vsts response in PowerShell, it boils down to the double quotes. Cryptic, I know.
[Move-Repos](https://github.com/kenhansen01/AdminPowershell/blob/master/Move-Repos.ps1)

### Update-Remote
I recently had to move an entire teams git repos from one TFS (Azure DevOps) Collection to another. In order to m inimize the pain of going through each and every local repo and changing the remote url, I wrote this little function. Change the URL and it works for GitHub too.
[Update-Remote](https://github.com/kenhansen01/AdminPowershell/blob/master/Update-Remote.ps1)

### Initialize-ExistingSearchInstance
Anyway, this is a last ditch effort to try before rebuilding Search from scratch. It will take your current topology and rebuild all the components and start it up again. If there is a malfunctioning component, this might help. If it happens to be analytics causing your troubles, you may need to delete those databases as well. The reason I say try it, is it causes no down time in your search service (the same cannot be said for a rebuild).
[Initialize-ExistingSearchInstance](https://github.com/kenhansen01/AdminPowershell/blob/master/Initialize-ExistingSearchInstance.ps1)