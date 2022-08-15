## My Mac Setup

This repo contains info on all the apps / tools / settings I use on my Mac. (Based of [CodingGarden's mac-setup](https://github.com/CodingGarden/mac-setup).)

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Homebrew / Terminal / Shell](#homebrew--terminal--shell)
  - [Homebrew](#homebrew)
  - [Terminal](#terminal)
  - [Shell](#shell)
    - [Install Oh My Zsh](#install-oh-my-zsh)
    - [Customizing Shell with theme](#customizing-shell-with-theme)
    - [Install the latest version of git](#install-the-latest-version-of-git)
- [Apps I Use Daily](#apps-i-use-daily)
- [OS Settings](#os-settings)
  - [Finder](#finder)
  - [Dock](#dock)
- [Node.js](#nodejs)
- [VS Code](#vs-code)
- [Break Timer](#break-timer)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Homebrew / Terminal / Shell

### Homebrew

[Homebrew](https://brew.sh/) allows us to install tools and apps from the command line.

To install it, open up the built in `Terminal` app and run this command:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

This will also install the xcode build tools which is needed by many other developer tools.

After Homebrew is done installing, we will use it to install everything else we need.

### Terminal

The first app I install is to replace the built in `Terminal`.

Checkout their documentation for more info on what iTerm2 can do: [https://iterm2.com/documentation.html](https://iterm2.com/documentation.html)

We install this using a Homebrew "cask". Casks are full applications, similar to what you would install from the App store.

```
brew install iterm2
```

Once installed, launch it and customize the settings / preferences to your liking. These are my preferred settings:

* Appearance
  * Theme
    * Minimal
* Profiles
  * Default
      * General -> Working Directory -> Reuse previous session's directory
      * Colors -> Basic Colors -> Foreground -> Lime Green
      * Text -> Font -> Anonymous Pro
          * You can download this font [here](https://www.marksimonson.com/fonts/view/anonymous-pro).
          * I use this font in VS Code as well
      * Text -> Font Size -> 16
      * Keys -> Key Mappings -> Presets -> Natural Text Editing
          * This allows me to use the [keyboard shortcuts](https://gist.github.com/w3cj/022081eda22081b82c52) I know and love inside of iTerm2

### Shell

Mac now comes with `zsh` as the default [shell](https://en.wikipedia.org/wiki/Comparison_of_command_shells) and is my preferred shell.

In combination with `zsh` I use [Oh My Zsh](https://ohmyz.sh/) which gives you a bunch of customizations out of the box.

#### Install Oh My Zsh

To install the latest version of `Oh My Zsh` use:

```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### Customizing Shell with theme

I use [powerlevel10k](https://github.com/romkatv/powerlevel10k) as theme inside Oh My Zsh.

To download the latest version of `powerlevel10k` use:

```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

After that, set powerlevel10k as your current theme in `~/.zshrc`:
```sh
ZSH_THEME="powerlevel10k/powerlevel10k"
```

#### Install the latest version of git

My Mac came with `git` version `2.32.1`, we can use brew to install the latest version of `git`:

```sh
git --version
brew install git
```

Open a new tab / window to start using the latest version:

```sh
git --version
```

Configure git with your name / email and preferred editor:

```sh
git config --global user.name example

git config --global user.email info@example.com

git config --global core.editor nano
```

## Apps I Use Daily

* [google-chrome](https://www.google.com/chrome/) - Preferred web browser
* [whatsapp](https://www.whatsapp.com/) - Chatting
* [github](https://desktop.github.com/) - Git client
* [notion](https://www.notion.so/) - Note taking
* [todoist](https://todoist.com/home) - Keep track of tasks
* [keepingyouawake](https://keepingyouawake.app/) - Prevents my Mac from going to sleep when I'm presenting / live streaming
* [discord](https://discord.com/) - Messaging / Community
* [vlc](https://www.videolan.org/) - I use VLC to watch videos instead of the built in QuickTime.
* [keka](https://www.keka.io/en/) - Can extract 7z / rar and other types of archives
* [time-out](https://www.dejal.com/timeout/) - Break timer
* [adobe-creative-cloud](https://www.adobe.com/creativecloud.html) - Graphic design
* [visual-studio-code](https://code.visualstudio.com/) - Basic code Editor
* [jetbrains-toolbox](https://www.jetbrains.com/toolbox-app/) - advanced ide for specific languages
* [insomnia](https://insomnia.rest/products/insomnia) - HTTP / REST / GraphQL tester / requester
* [stats](https://github.com/exelban/stats) - CPU, RAM & Network statistics inside menubar
* [alt-tab](https://alt-tab-macos.netlify.app/) - Tab management with window viewer
* [rectangle](https://rectangleapp.com/) - Window management
* [alfred](https://www.alfredapp.com/) - Quick app launching & clipboard history

You can install them in one go by placing them all into a text file and then running brew install:

```
google-chrome
whatsapp
github
notion
todoist
keepingyouawake
discord
vlc
keka
time-out
adobe-creative-cloud
visual-studio-code
jetbrains-toolbox
insomnia
stats
alt-tab
rectangle
alfred
```

```sh
xargs brew install < apps.txt
```

## OS Settings

These are my preferred settings for `Finder` and the `Dock`.

### Finder

* Finder -> Preferences
  * General -> Show these on the desktop -> Select None
      * I try to keep my desktop completely clean.
  * General -> New Finder windows show -> Home Folder
      * I prefer to see my home folder in each new finder window instead of recent documents
  * Advanced -> Show all filename extensions -> Yes
  * Advanced -> Show warning before changing an extension -> No
  * Advanced -> When performing a search -> Search the current folder
* View
  * Show Status Bar
  * Show Path Bar
  * Show Tab Bar

### Dock

I don't use the Dock at all. It takes up screen space, and I can use Alfred to launch apps and AltTab to switch between apps. I make the dock as small as possible and auto hide it.

* System Preferences
  * Dock & Menu Bar
      * Size -> Small as possible
      * Position on screen -> Right
      * Automatically hide and show the Dock -> Yes

## Node.js

I use nvm to manage the installed versions of Node.js on my machine. This allows me to easily switch between Node.js versions depending on the project I'm working in.

See installation instructions [here](https://github.com/nvm-sh/nvm#installing-and-updating).

OR run this command (make sure v0.39.1 is still the latest)

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

After installation you'll want to add the following to your .bash_profile / .zshrc etc.

```sh
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" ## This loads nvm
```

Now that nvm is installed, you can install a specific version of node.js and use it:

```sh
nvm install 18
nvm use 18
node --version
```

## VS Code

VS Code is my preferred code editor.

You can view all of my VS Code settings / extensions [here](https://github.com/CodingGarden/vscode-settings).

2 of the most notable settings are:

```json
{
  "editor.linkedEditing": true,
  "editor.snippetSuggestions": "top",
}
```

* editor.linkedEditing
  * Automatically edit a closing tag when editing an opening tag
* editor.snippetSuggestions
  * Puts the most relevant auto complete options at the top

## Break Timer

I use an app called [Time Out](https://www.dejal.com/timeout/).

I have it setup to show:
* 10 second micro break every 15 minutes
* 5 minute long break every 60 minutes