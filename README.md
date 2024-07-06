# My Mac Setup

This repo contains info on all the apps / tools / settings I use on my Mac.

## Table of Contents

- [My Mac Setup](#my-mac-setup)
  - [Table of Contents](#table-of-contents)
  - [Usage](#usage)
  - [Homebrew](#homebrew)
  - [OS Settings](#os-settings)
    - [Finder](#finder)
    - [Dock](#dock)
  - [Git Settings](#git-settings)
    - [SSH Key Setup](#ssh-key-setup)
  - [Application Settings](#application-settings)
    - [Raycast](#raycast)
    - [Rectangle](#rectangle)
    - [Warp](#warp)

## Usage

1. Clone this repository
2. Run [setup.sh](./setup.sh)
3. Configure the [OS Settings](#os-settings) and [Application Settings](#application-settings) described below by hand.
4. Enjoy your freshly installed mac! :tada:

## Homebrew

I use Homebrew for most of the installation of my apps and tools. Each of these are specified inside [brew-casks.txt](./brew-casks.txt) or [brew-formulae.txt](./brew-formulae.txt) depending if is an actual program or just a cli/binary.

## OS Settings

These are my preferred settings for all native macos features.

### Finder

- Finder -> Preferences
  - General -> Show these items on the desktop -> Select None
  - General -> New Finder windows show -> Select user directory
  - Sidebar -> Show these items in the sidebar
    - Airdrop
    - Applications
    - Downloads
    - Desktop
    - iCloud Drive
    - Workspace
    - Locations (Select all online/offline locations)
  - Advanced -> Show all filename extensions -> Yes
  - Advanced -> Show warning before changing an extension -> No
  - Advanced -> When performing a search -> Search the current folder
- View
  - as List
  - Sort By -> Kind
  - Show Status Bar
  - Show Path Bar
  - Show Tab Bar

### Dock

- System Preferences
  - Dock & Menu Bar
    - Show recent applications in Dock -> No

## Git Settings

### SSH Key Setup

To setup git commit signing follow the designated guide from Github on how to [add a new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-accountn). The script should've set the needed properties to use this new generated ssh key for commit signing (Assuming that the default name and location is used; `~/.ssh/id_ed25519`).

## Application Settings

These are my preferred settings for all third party macos applications.

### Raycast

- Extensions
  - Clipboard History
    - Hotkey -> CMD + Shift + C

### Rectangle

- Repeated commands -> cycle 1/2, 2/3 and 1/3 on half actions

### Warp

- Settings -> Appearance
  - Prompt -> Select `Shell prompt (PS1)`
  - Text -> Terminal font -> Select `MesloLGS Nerd Font Mono`
