# My Mac Setup (Automated with Ansible)

This repo contains a fully automated setup using **Ansible** to configure my personal Mac with apps, settings, dotfiles, and tools.

## Table of Contents

- [My Mac Setup (Automated with Ansible)](#my-mac-setup-automated-with-ansible)
  - [Table of Contents](#table-of-contents)
  - [Quick Start](#quick-start)
    - [📦 0. Prerequisites](#-0-prerequisites)
      - [🛠️ Install Homebrew (if not installed)](#️-install-homebrew-if-not-installed)
      - [🛠️ Install Ansible via Homebrew](#️-install-ansible-via-homebrew)
    - [🚀 1. Clone this repository](#-1-clone-this-repository)
    - [⚙️ 2. Run the Ansible playbook](#️-2-run-the-ansible-playbook)
  - [Features](#features)
  - [Playbook Overview](#playbook-overview)
  - [OS Settings](#os-settings)
    - [Finder](#finder)
    - [Dock](#dock)
  - [Application Settings](#application-settings)
    - [Raycast](#raycast)
    - [Rectangle](#rectangle)
    - [Warp](#warp)
    - [Alt Tab](#alt-tab)
    - [Todoist](#todoist)
    - [AltTab](#alttab)
  - [Contributing](#contributing)

---

## Quick Start

### 📦 0. Prerequisites

This setup assumes the following are installed:

- **[Homebrew](https://brew.sh)** – package manager for macOS
- **Ansible** – automation tool

#### 🛠️ Install Homebrew (if not installed)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then add it to your shell (e.g. in `.zshrc`):

```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
eval "$(/opt/homebrew/bin/brew shellenv)"
```

#### 🛠️ Install Ansible via Homebrew

```bash
brew install ansible
```

---

### 🚀 1. Clone this repository

```bash
git clone https://github.com/tjeufoolen/mac-setup.git
cd mac-setup/ansible
```

---

### ⚙️ 2. Run the Ansible playbook

```bash
ansible-playbook -i inventory.ini playbook.yml
```

You can do a dry run (check mode) to test compliance:

```bash
ansible-playbook -i inventory.ini playbook.yml --check --diff
```

---

## Features

- ✅ Installs apps using Homebrew
- ✅ Configures system preferences
- ✅ Sets up Git and SSH
- ✅ Copies dotfiles like `.zshrc` and `.warp` configs
- ✅ Creates folders and ensures idempotency
- ✅ Fully scriptable and reproducible for teams

---

## Playbook Overview

The main playbook is located in `ansible/playbook.yml` and includes tasks for:

- Installing packages from `Brewfile`
- Setting macOS defaults
- Setting up dotfiles (e.g., `.zshrc`)
- Configuring Git
- Setting up config directories (e.g., `.warp`)
- Ensuring commonly used folders exist

Make sure to review and edit:

- `inventory.ini`: Defines your local target
- `files/`, `templates/`, and `tasks/`: Where configuration and logic live

---

## OS Settings

These are **not automated** yet and may still require manual tweaking.

### Finder

- Preferences

  - General → Show these items on the desktop → None
  - Sidebar → Show: Airdrop, Applications, Downloads, Desktop, iCloud Drive, Workspace
  - Advanced → Show all filename extensions: ✅
  - When performing a search: Search current folder

- View

  - As List, Sort by Kind
  - Show Status Bar, Path Bar, Tab Bar

### Dock

- Preferences → Dock & Menu Bar

  - Disable "Show recent applications in Dock"

---

## Application Settings

Some GUI apps require manual config. Here’s how I set mine:

### Raycast

- Clipboard History Hotkey → `Cmd + Shift + C`
- Enable "Show Raycast in menu bar"

### Rectangle

- Enable cycling through sizes (1/2, 2/3, 1/3)
- Hide menu bar icon

### Warp

- Appearance → Prompt: `Shell prompt (PS1)`
- Theme: `Fox`

### Alt Tab

- Controls → Shortcut 1 → Hold `Cmd` instead of `Ctrl`

### Todoist

- Right-click menu bar icon → Hide Menu Bar Item

### AltTab

- Preferences → General → Menubar icon → Select empty icon

---

## Contributing

Feel free to fork this repo and customize it to fit your own setup or team needs!

---

```

```
