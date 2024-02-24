# My Mac Setup

This repo contains info on all the apps / tools / settings I use on my Mac.

## Usage

1. Clone this repository
2. Run [setup.sh](./setup.sh)
3. Configure the [OS Settings](#os-settings) described below by hand.
4. Enjoy your freshly installed mac! :tada:

## Homebrew

I use Homebrew for most of the installation of my apps and tools. Each of these are specified inside [brew-casks.txt](./brew-casks.txt) or [brew-formulae.txt](./brew-formulae.txt) depending if is an actual program or just a cli/binary.

## OS Settings

These are my preferred settings for `Finder` and the `Dock`.

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
