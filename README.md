# My Mac Setup

This repo contains info on all the apps / tools / settings I use on my Mac.

## Table of Contents

- [Usage](##usage)
- [Homebrew](#-usage)
- [OS Settings](#-os-settings)
  - [Finder](#-finder)
  - [Dock](#-dock)
- [Application Settings](#-application-settings)
  - [Raycast](#-raycast)
  - [Rectangle](#-rectangle)
  - [Stretchly](#-strechtly)

## Usage

1. Clone this repository
2. Run [setup.sh](./setup.sh)
3. Configure the [OS Settings](#os-settings) described below by hand.
4. Enjoy your freshly installed mac! :tada:

## Homebrew

I use Homebrew for most of the installation of my apps and tools. Each of these are specified inside [brew-casks.txt](./brew-casks.txt) or [brew-formulae.txt](./brew-formulae.txt) depending if is an actual program or just a cli/binary.

## OS Settings

These are my preferred settings for all native macos features.

### Finder

* Finder -> Preferences
  * General -> Show these items on the desktop -> Select None
  * General -> New Finder windows show -> Select user directory
  * Sidebar -> Show these items in the sidebar
    * Airdrop
    * Applications
    * Downloads
    * Desktop
    * iCloud Drive
    * Workspace
    * Locations (Select all online/offline locations)
  * Advanced -> Show all filename extensions -> Yes
  * Advanced -> Show warning before changing an extension -> No
  * Advanced -> When performing a search -> Search the current folder
* View
  * as List
  * Sort By -> Kind
  * Show Status Bar
  * Show Path Bar
  * Show Tab Bar

### Dock

* System Preferences
  * Dock & Menu Bar
    * Show recent applications in Dock -> No

## Application Settings

These are my preferred settings for all third party macos applications.

### Raycast

* Extensions
  * Clipboard History
    * Hotkey -> CMD + Shift + C  

### Rectangle

* Repeated commands -> cycle 1/2, 2/3 and 1/3 on half actions
 
### Stretchly

* Settings
  * Start Stretchly automatically when logging in -> Yes
  * Show breaks in -> Full screen
  * Show exercise tips during breaks -> Yes
  * Show breaks on all monitors -> Yes
  * Monitor system idle time -> Yes
  * Show breaks even in Do Not Disturb mode -> Yes
* Schedule
  * Enable Mini Breaks -> Yes
    * Break for -> 20 seconds
    * Every -> 15 minutes
    * Show notification before Mini Break starts -> No
    * Enable Postponement for Mini Break -> Yes
  * Enable Long Breaks
    * Break for -> 5 minutes
    * Every -> 90 minutes
    * Show notification before Long Break starts -> No
    * Enable Postponement for Long Break -> Yes
* Theme
  * Menubar icon -> Monochrome    
