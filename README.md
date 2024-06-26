# Johann Chang’s dotfiles

* **Cross-platform** - Support [Linux](https://en.wikipedia.org/wiki/Linux), [macOS](https://en.wikipedia.org/wiki/MacOS), and [Microsoft Windows](https://en.wikipedia.org/wiki/Microsoft_Windows).
* **Modern** - Richer features and better performance:
  * [Z shell (Zsh)](https://en.wikipedia.org/wiki/Z_shell) over [Bourne Again Shell (Bash)](https://en.wikipedia.org/wiki/Bash_(Unix_shell)).
  * [Neovim](https://en.wikipedia.org/wiki/Vim_(text_editor)#Neovim) over [Vi IMproved (Vim)](https://en.wikipedia.org/wiki/Vim_(text_editor)).
  * [ripgrep](https://github.com/BurntSushi/ripgrep) over [grep](https://en.wikipedia.org/wiki/Grep).
  * [fd](https://github.com/sharkdp/fd) over [find](https://en.wikipedia.org/wiki/Find_(Unix)).
* **Lightweight** - Balanced between performance and feature count. Can run smoothly on a Raspberry Pi.
* **Pure** - Only putting symbolic links of config files to the system. No modification to existing system files.
* **Configurable**
  * Support both light and dark background. Further reading: [Is Dark Mode Better for Your Eyes?](https://rxoptical.com/eye-health/is-dark-mode-better-for-your-eyes/)
  * Interactive installation process.
* **Compliant** - Follow standards of [XDG Base Directory](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) and [Unix](https://en.wikipedia.org/wiki/Unix) convention.
* **Minimal Pollution** - Prefer adding config files instead of replacing them when it's possible.
* **Removable** - Has a built-in uninstaller. Original setup will be backed up during the installation process and will be restored after the uninstallation.

---

<!-- TOC start (generated with https://github.com/derlin/bitdowntoc) -->
* [Features](#features)
   + [Programs and Fonts](#programs-and-fonts)
   + [Z Shell (zsh)](#z-shell-zsh)
      - [Z Shell Plugins](#z-shell-plugins)
   + [Neovim (nvim)](#neovim-nvim)
      - [Neovim Plugins](#neovim-plugins)
   + [Tmux](#tmux)
      - [Tmux Plugins](#tmux-plugins)
   + [Supported Virtual Environments](#supported-virtual-environments)
* [Setup](#setup)
   + [Prerequisites](#prerequisites)
      - [Linux (tested on Ubuntu 22.04 Jammy Jellyfish and Raspberry Pi OS Bookworm)](#linux-tested-on-ubuntu-2204-jammy-jellyfish-and-raspberry-pi-os-bookworm)
      - [macOS](#macos)
      - [Microsoft Windows (tested on Windows 10)](#microsoft-windows-tested-on-windows-10)
   + [Installation](#installation)
   + [Optional Tweak](#optional-tweak)
      - [macOS](#macos-1)
      - [Ubuntu](#ubuntu)
<!-- TOC end -->

## Features

### Programs and Fonts

1. [fd](https://github.com/sharkdp/fd)
2. [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)
3. [ripgrep](https://github.com/BurntSushi/ripgrep)
4. [zoxide](https://github.com/ajeetdsouza/zoxide)

### Z Shell (zsh)

![screenshots/zsh-prompt.png](screenshots/zsh-prompt.png)

1. The current setup is blazingly fast.

#### Z Shell Plugins

1. [romkatv/powerlevel10k](https://github.com/romkatv/powerlevel10k)
2. [ohmyzsh/ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
   1. [lib/completion](https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/completion.zsh)
   2. [lib/history](https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/history.zsh)
   3. [lib/key-bindings](https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/key-bindings.zsh)
   4. [plugins/docker-compose](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker-compose)
   5. [plugins/nvm](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/nvm)
   6. [plugins/pyenv](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/pyenv)
   7. [plugins/rvm](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/rvm)
3. [z-shell/zi](https://github.com/z-shell/zi)
4. [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
5. [zsh-users/zsh-completions](https://github.com/zsh-users/zsh-completions)

### Neovim (nvim)

![screenshots/neovim-1.png](screenshots/neovim-1.png)
![screenshots/neovim-2.png](screenshots/neovim-2.png)
![screenshots/neovim-3.png](screenshots/neovim-3.png)

1. The current setup is blazingly fast.
2. Reselect visual block after indent/outdent.
3. Enable moving up and down with j and k in wrapped lines.
4. Clear the search highlight with `<Leader>` `/`.
5. Saving files as root with `w!!`.
6. Better command-line editing.
   1. `<Ctrl> + j` and `<Ctrl> + k` move to lines that have identical prefixes.
   2. `<Ctrl> + a` and `<Ctrl> + e` move to the beginning and the end of the line.
7. Toggle paste mode with `<F2>`.
   1. Leave paste mode on leaving insert mode
8. Comment.nvim
   * NORMAL mode
     1. `g` `c` `c` - Toggles the current line using linewise comment
     2. `g` `b` `c` - Toggles the current line using blockwise comment
     3. `[count]` `g` `c` `c` - Toggles the number of line given as a prefix-count using linewise
     4. `[count]` `g` `b` `c` - Toggles the number of line given as a prefix-count using blockwise
     5. `g` `c` `[count]` `<motion>` - (Op-pending) Toggles the region using linewise comment
     6. `g` `b` `[count]` `<motion>` - (Op-pending) Toggles the region using linewise comment
     7. `g` `c` `o` - Insert comment to the next line and enters INSERT mode
     8. `g` `c` `O` - Insert comment to the previous line and enters INSERT mode
     9. `g` `c` `A` - Insert comment to end of the current line and enters INSERT mode
   * VISUAL mode
     1. `g` `c` - Toggles the region using linewise comment
     2. `g` `b` - Toggles the region using blockwise comment
9. neo-tree.nvim
   1. Close the neo-tree.nvim pane: `q`
   2. Open the neo-tree.nvim pane: `<Leader>` `w` `f`
   3. Show shortcuts: `?` (when in neo-tree.nvim's pane)
10. telescope.nvim
    1. Close the telescope window: `q`
    2. Delete the highlighted buffer: `d` `d`
    3. Find files: `<Leader>` `f` `f`
    6. Find files including hidden ones: `<Leader>` `f` `h`
    4. Grep in files: `<Leader>` `f` `g`
    5. Grep current word in files: `<Leader>` `f` `w`
    6. Find buffers: `<Leader>` `f` `b`
    7. View the undo tree: `<Leader>` `f` `u`
11. surround.vim
    1. `y` `s` `<motion>` `<desired>` - Add desired surround around text defined by `<motion>`
    2. `d` `s` `<existing>` - Delete `<existing>` surround
    3. `c` `s` `<existing>` `<desired>` - Change `<existing>` surround to `<desired>`
    4. `S` `<desired>` - Surround when in visual modes (surrounds full selection)
12. mini.align
    Yank the line you'd like to align and then press `<Enter>`.
    Read the [README](https://github.com/echasnovski/mini.align/blob/main/README.md) for more information.
13. aerial.nvim
    1. Close the aerial.nvim pane: `q`
    2. Open the aerial.nvim pane: `<Leader>` `w` `s`
    3. Show shortcuts: `?` (when in aerial.nvim's pane)
    4. Go to previous symbol: `{`
    5. Go to next symbol: `}`
14. trouble.nvim
    1. Toogle trouble pain: `<Leader>` `x` `x`
    2. Toogle LSP trouble pain: `g` `R`
15. inc-rename.nvim
    1. Rename: `<Leader>` `r` `n`
16. indent-blankline.nvim
    1. Toggle indent helper: `<Leader>` `|`

#### Neovim Plugins

1. [aerial.nvim](https://github.com/stevearc/aerial.nvim)
2. [Comment.nvim](https://github.com/numToStr/Comment.nvim)
3. [copilot.vim](https://github.com/github/copilot.vim)
4. [inc-rename.nvim](https://github.com/smjonas/inc-rename.nvim)
5. [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
6. [lazy.nvim](https://github.com/folke/lazy.nvim)
7. [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
8. [mason.nvim](https://github.com/williamboman/mason.nvim)
9. [nvim-cmp](https://github.com/hrsh7th/nvim-cmp/)
10. [nvim-solarized-lua](https://github.com/ishan9299/nvim-solarized-lua)
11. [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
12. [surround.vim](https://github.com/tpope/vim-surround)
13. [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
14. [trouble.nvim](https://github.com/folke/trouble.nvim)
15. [mini.align](https://github.com/echasnovski/mini.align)

### Tmux

1. Tmux prefix key: `<Ctrl> + s`.
2. Switch to the last window: `<Ctrl> + s`.
3. Send prefix: `<Ctrl> + a`.
4. Selection:
   1. Select: `v`
   2. Block select: `V`
5. Tmux Resurrect key bindings:
   1. Save: `s`
   2. Restore: `r`
6. Go through installed plugins for more features.

#### Tmux Plugins

1. [tmux-colors-solarized](https://github.com/seebi/tmux-colors-solarized)
2. [tmux-open](https://github.com/tmux-plugins/tmux-open)
3. [tmux-pain-control](https://github.com/tmux-plugins/tmux-pain-control)
4. [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)
5. [tmux-sidebar](https://github.com/tmux-plugins/tmux-sidebar)
6. [tmux-yank](https://github.com/tmux-plugins/tmux-yank)
7. [Tmux Plugin Manager (tpm)](https://github.com/tmux-plugins/tpm)

### Supported Virtual Environments

1. [Node Version Manager - nvm](https://github.com/nvm-sh/nvm)
2. [Simple Python version management: pyenv](https://github.com/pyenv/pyenv)
3. [Ruby enVironment Manager (RVM)](https://github.com/rvm/rvm)

## Setup

### Prerequisites

#### Linux (tested on Ubuntu 22.04 Jammy Jellyfish and Raspberry Pi OS Bookworm)

1. Install necessary packages.

   ```
   sudo apt install build-essential cmake git git-lfs golang tmux fontconfig python3 python3-dev python3-venv curl fd-find ripgrep zsh exuberant-ctags trash-cli fzf xsel zoxide yapf3 ccls
   ```

2. Change default shell to [Zsh](https://www.zsh.org/) via `chsh`.

3. [Skip on Raspberry Pi OS] Install [flatpak](https://flatpak.org/).

   ```
   sudo apt install flatpak
   flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
   ```

4. Install [Neovim](https://neovim.io/).

   For Ubuntu:

   ```
   sudo add-apt-repository ppa:neovim-ppa/unstable
   sudo apt update
   sudo apt install neovim
   ```

   For Raspberry Pi OS:

   ```
   sudo apt install ninja-build gettext cmake unzip curl
   git clone https://github.com/neovim/neovim
   cd neovim
   make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=/usr/local"
   git switch stable
   sudo make install
   ```

5. Install [Node Version Manager (nvm)](https://github.com/nvm-sh/nvm).

   ```
   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
   ```

6. Install [pyenv](https://github.com/pyenv/pyenv).

   ```
   curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
   ```

7. Install [Nerd Fonts](https://www.nerdfonts.com/) patched [GitHub Next Monaspace](https://monaspace.githubnext.com/): Download and extract [Monaspace.zip](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Monaspace.zip). Then configure the terminal to use Monaspace Nerd Font.

8. Go to [Installation](#installation).

#### macOS

1. Install [Homebrew](http://brew.sh/).

   ```
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

   Make sure Homebrew is in the `$PATH`:

   ```
   export PATH="/opt/homebrew/bin:$PATH"
   ```

2. Install necessary packages.

   ```
   brew install coreutils bash fd ripgrep tmux neovim trash git-lfs cmake ctags go gotags nvm pyenv zoxide yapf ccls
   ```

3. Install [Nerd Fonts](https://www.nerdfonts.com/) patched [GitHub Next Monaspace](https://monaspace.githubnext.com/):

   ```
   brew install --cask font-monaspace-nerd-font
   ```

4. Install [iTerm2](https://iterm2.com/):

   ```
   brew install --cask iterm2
   ```

5. Launch iTerm2  and configure the iTerm2 to use Monaspace Nerd Font (MonaspiceNe Nerd Font Propo) that's installed in #3.

   ![](screenshots/iterm2-font-config.png)

6. Make sure the Homebrew's binary folder is in the `$PATH` then go to [Installation](#installation):

   ```
   export PATH="/opt/homebrew/bin:$PATH"
   ```

#### Microsoft Windows (tested on Windows 10)

1. `$HOME` (`%USERPROFILE%`) folder **has to** be on an [NTFS](https://en.wikipedia.org/wiki/NTFS) volume.

2. Install [Git for Windows](https://gitforwindows.org/)

   **Note**:

   1. **Uncheck** Git LFS (Large File Support)
   2. **Check** Use external OpenSSH
   3. **Check** Enable symbolic links

3. Install [OpenSSH](https://www.openssh.com/) Client. Open an **elevated** (Run as administrator) **PowerShell** session and execute the following command:

   ```
   Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH.Client*' | Add-WindowsCapability -Online
   ```

4. Install [Nerd Fonts](https://www.nerdfonts.com/) patched [GitHub Next Monaspace](https://monaspace.githubnext.com/): Download and extract [Monaspace.zip](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Monaspace.zip), move `*.otf` to `%WINDIR%\Fonts`.

5. Install [Python](https://www.python.org/downloads/)

   **Note**: Install Python that's from the official website but not Microsoft Store

   1. Add Python to PATH
   2. Disable path length limit

6. Install necessary packages via [winget](https://learn.microsoft.com/en-us/windows/package-manager/). In a regular Command Prompt or PowerShell session, execute the following commands:

   ```
   winget install --accept-package-agreements --accept-source-agreements --id Microsoft.VCRedist.2015+.x64
   winget install --accept-package-agreements --accept-source-agreements --id GitHub.GitLFS
   winget install --accept-package-agreements --accept-source-agreements --id Neovim.Neovim
   winget install --accept-package-agreements --accept-source-agreements --id sharkdp.fd
   winget install --accept-package-agreements --accept-source-agreements --id BurntSushi.ripgrep.MSVC
   winget install --accept-package-agreements --accept-source-agreements --id UniversalCtags.Ctags
   winget install --accept-package-agreements --accept-source-agreements --id junegunn.fzf
   winget install --accept-package-agreements --accept-source-agreements --id ajeetdsouza.zoxide
   winget install --accept-package-agreements --accept-source-agreements --id MSYS2.MSYS2
   winget install --accept-package-agreements --accept-source-agreements --id Microsoft.VisualStudioCode
   ```

7. Install [Windows Terminal](https://www.microsoft.com/p/windows-terminal/9n0dx20hk701)

8. Enable **long file path support** from: Start > Local Group Policy Editor > Local Computer Policy > Computer Configuration > Administrative Templates > System > Filesystem > Enable Win32 long paths

9. Enable [Developer Mode](https://docs.microsoft.com/en-us/windows/apps/get-started/enable-your-device-for-development) from: Settings > Update & Security > For developers > Developer Mode

    * Adding the current user to: Start > Local Security Policy > Security Settings > Local Policies > User Rights Assignment > Create symbolic links if enabling the developer mode does not enable the symlink creating support for you.

10. Configure MSYS2

    1. Enable the symbolic link support in MSYS2 by uncommenting the following line in `C:\msys64\msys2_shell.cmd`

       ```
       rem set MSYS=winsymlinks:nativestrict
       ```

       and the following line in `C:\msys64\mingw64.ini`.

       ```
       #MSYS=winsymlinks:nativestrict
       ```

       Note: You can use VS Code to edit those files.

    2. Make `%TMEP%` mounted at `/tmp` by adding the following contents to `C:\msys64\etc\fstab`.

       ```
       none /tmp usertemp binary,posix=0,noacl 0 0
       ```

    3. Set Windows `%USERPROFILE%` folder (`C:\Users\<user name>`) as the `$HOME` folder by adding the following contents to `C:\msys64\etc\fstab`. Ref: [How to change HOME directory and start directory on MSYS2?](https://stackoverflow.com/a/66946901).

       ```
       ##################################################################
       # Canonicalize the two home directories by mounting the windows  #
       # user home with the same path mapping as unix.                  #
       ##################################################################
       C:/Users /home ntfs binary,posix=0,noacl,user 0 0
       ```

    4. Install necessary and useful packages in `MSYS2 MinGW-w64`

       ```
       pacman -Sy man tmux zsh
       ```

11. Configure Windows Terminal

    1. Disable copy & paste mappings to `<Ctrl> + c` and `<Ctrl> + v` by commenting out related config in `settings.json` which can be opened from the buttom left gear icon of Windows Terminal Settings page. You will still be able to use `<Ctrl> + <Shift> + c` and `<Ctrl> + <Shift> + v` for copying and pasting.

       ```
           "actions":
           [
               ...
               {
                   "command":
                   {
                       "action": "copy",
                       "singleLine": false
                   },
                   "keys": "ctrl+c"
               },
               {
                   "command": "paste",
                   "keys": "ctrl+v"
               },
               ...
           ],
       ```

    2. Prevent from window being closed when pressing `<Ctrl> + <Shift> + w` by adding the following content to `settings.json`.

       ```
           "actions":
           [
               ...
               {
                   "command": "unbound",
                   "keys": "ctrl+shift+w"
               },
               ...
           ],
       ```

    3. Make `<Ctrl> + <F4>` close the current pane by adding the following content to `settings.jso:

       ```
           "actions":
           [
               ...
               {
                   "command": "closePane",
                   "keys": "ctrl+f4"
               },
               ...
           ],
       ```

    4. Resolve the key mapping conflict of `<Ctrl> + <Shift> + 6` in Neovim/Vim by adding the following contents to `settings.json`.

       ```
           "actions":
           [
               ...
               {
                   "command" : "unbound",
                   "keys": "ctrl+shift+6"
               },
               ...
           ],
       ```

    5. Make ctrl + tab / ctrl + shift + tab switching tabs in MRU / LRU order but keep ctrl + pgup / ctrl + pgdown in order by addin the following contents to `settings.json`.

       ```
           "actions":
           [
               ...
               {
                   "command":
                   {
                       "action": "nextTab",
                       "tabSwitcherMode": "disabled"
                   },
                   "keys": "ctrl+pgdn"
               },
               {
                   "command":
                   {
                       "action": "nextTab",
                       "tabSwitcherMode": "mru"
                   },
                   "keys": "ctrl+tab"
               },
               {
                   "command":
                   {
                       "action": "prevTab",
                       "tabSwitcherMode": "disabled"
                   },
                   "keys": "ctrl+pgup"
               },
               {
                   "command":
                   {
                       "action": "prevTab",
                       "tabSwitcherMode": "mru"
                   },
                   "keys": "ctrl+shift+tab"
               },
               ...
           ],
       ```

    6. Make Windows Terminal support MSYS2's shell by adding the following config to `settings.json`:

       ```
           "profiles": {
               "list":
               [
                   // ...
                   {
                       "bellStyle": "none",
                       "commandline": "C:/msys64/msys2_shell.cmd -defterm -here -no-start -mingw64 -use-full-path -shell zsh",
                       "guid": "{7e049a6e-6aea-4e66-9bd3-a4bd49a49bab}",
                       "icon": "C:/msys64/mingw64.ico",
                       "name": "MSYS2 MinGW-w64 Zsh",
                       "startingDirectory": "%USERPROFILE%"
                   },
                   // ...
               ]
           }
       ```

    7. Config the terminal to use Monaspace Nerd Font and set your prefered text color scheme in Profiles > MSYS2 MinGW-w64 Zsh.

12. Pre-installation

    1. Open an **elevated** (Run as administrator) **PowerShell** session and execute the following command. So that you can use `fsutil` in the later process. After the execution, you may need to restart your computer.

       ```
       Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
       ```

    2. Open an "MSYS2 MinGW-w64 Zsh" tab in Windows Terminal.

    3. Select `0` to create an empty `~/.zshrc`

    4. Unset empty `$tmp` and `$temp`.

       ```
       unset tmp temp
       ```

       **Note**: Empty `$tmp` and `$temp` environment variables are extremely error-prone on Windows. And it's difficult to identify the inroduced errors.

    5. Enable symlink support for Git. This is necessary for the installation of this dotfiles.

       ```
       git config --global core.symlinks true
       ```

    6. Text files inside dotfiles need to use `LF` as line endings. Don't let Git convert line endings to `CRLF` on Windows.

       ```
       git config --global core.autocrlf false
       git config --global core.safecrlf warn
       ```

13. Go to [Installation](#installation).

### Installation

1. `git clone` this repo and `cd` into it.

   ```
   cd ~  # You can put the dotfiles repository anywhere in $HOME. ~/dotfiles here is used as an example.
   git clone https://github.com/mrjohannchang/dotfiles.git
   cd dotfiles
   ```

2. [**Windows Only**] Enable case sensitive support for sub-modules from a regular **PowerShell** session

   ```
   cd ~\dotfiles\3rdparties  # Assuming the dotfiles repository has been cloned into ~\dotfiles
   (Get-ChildItem -Recurse -Directory).FullName | ForEach-Object {fsutil.exe file setCaseSensitiveInfo $_ enable}
   ```

   Then **go back** to ZSH.

3. Clone sub-modules.

   ```
   git submodule update --init --recursive --remote
   ```

4. Install. For **Windows** users, after executing `install.sh`, you'll need to terminate all the sessions and exit Windows Terminal. Then reopen it for the next step.

   ```
   ./install.sh
   ```

5. Execute `tmux` (the command is `script -c tmux /dev/null` when using **Windows Terminal**) and press `<Ctrl> + s` `I` (uppercase i) to install plugins of tmux. It may take a few minutes. Please expect `tmux` frozen during the installation.

6. Execute `nvim` and install desired LSPs via `:Mason`.

### Optional Tweak

#### macOS

1. `Option` + `Arrow` moving between words in Zsh and iTerm2

   1. Go to Preferences, Profile, Keys.
   2. Set your left ⌥ key to act as an escape character.
   3. Locate the current shortcut for ⌥ ← or create a new one, with the following settings:
      Keyboard Shortcut: ⌥←
      Action: Send Escape Sequence
      Esc+: b
   4. repeat for the ⌥→ keyboard shortcut with the following settings:
      Keyboard Shortcut: ⌥→
      Action: Send Escape Sequence
      Esc+: f

2. Disable smart quotes and dashes from Settings > Keyboard > Text Input > Input Sources > All Input Sources > Use smart quotes and dashes

3. Configure `Option` + `Space` to switch between input methods from Settings > Keyboard > Keyboard Shortcuts > Input Sources

4. Make the scroll direction settings of mouse and trackpad independent, and use mouse middle button to drag: [Mac Mouse Fix](https://macmousefix.com/).

   ```
   brew install mac-mouse-fix
   ```

5. Useful apps from Sindre Sorhus: [Quality crafted apps](https://sindresorhus.com/apps).

#### Ubuntu

1. Install fcitx to replace iBus:

    a. ```
       sudo apt install fcitx-chewing fcitx-table-boshiamy
       ```
    b. Choose `fcitx` as the keyboard input method system in `gnome-language-selector`.
    c. Remove keyboard layouts if there are more than 1 from Input Source in `gnome-control-center` > Region & Language.
    d. Remove the hotkey for switching input source in `gnome-control-center` > Keyboard Shortcuts > Typing.
    e. Replace the hotkey for Trigger Input Method to Super + Space in `fcitx-configtool` > Global Config > Hotkey > Trigger Input Method.

2. Key remapping for REALFORCE for Mac keyboard:

    a. Config udev:

       ```
       sudo cp ubuntu/etc/udev/rules.d/1000-key-remapping-for-realforce-for-mac.rules /etc/udev/rules.d
       sudo udevadm control --reload
       ```

    b. In `Startup Applications Preferences`, add an item that executes "${HOME}/dotfiles/bin/linux/swap-option-and-command-for-realforce-for-mac.sh"

#### Windows

1. OpenSSH server.

   1. Install

      **Windows 11**

      1. Go to *Apps > Optional features* and click on *View features*.
      2. Locate *“OpenSSH server”* feature, select it, click *Next*, and then click *Install*.

      **Windows 10 (version 1803 and newer)**

      1. Go to *Apps > Apps & features > Optional features* and click on *Add a feature*.
      2. Locate *“OpenSSH server”* feature, expand it, and select *Install*.

      **Manual**

      1. Download the latest [OpenSSH for Windows binaries](https://github.com/PowerShell/Win32-OpenSSH/releases) (package `OpenSSH-Win64.zip`)

      2. As the Administrator, extract the package to `C:\Program Files\OpenSSH`

      3. As the Administrator, install `sshd` and `ssh-agent` services:

         ```
         powershell.exe -ExecutionPolicy Bypass -File install-sshd.ps1
         ```

   2. Configuring SSH server

      * Allow incoming connections to SSH server in Windows Firewall:

        - When installed as an optional feature, the firewall rule *“OpenSSH SSH Server (sshd)”* should have been created automatically. If not, proceed to create and enable the rule as follows.

        - Either run the following PowerShell command as the Administrator:

          ```
          New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH SSH Server' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22 -Program "C:\Windows\System32\OpenSSH\sshd.exe"
          ```

          Replace `C:\Windows\System32\OpenSSH\sshd.exe`
          with the actual path to the `sshd.exe` (`C:\Program Files\OpenSSH\ssh.exe` , had you followed the manual installation instructions above).

        - or go to *Control Panel > System and Security > Windows Defender Firewall*[1](https://winscp.net/eng/docs/guide_windows_openssh_server#fn1) *> Advanced Settings > Inbound Rules* and add a new rule for port 22.

      * Start the service and/or configure automatic start:

        - Go to *Control Panel > System and Security > Administrative Tools* and open *Services*. Locate *OpenSSH SSH Server* service.

        - If you want the server to start automatically when your machine is started: Go to *Action > Properties*. In the Properties dialog, change *Startup type* to *Automatic* and confirm.

        - Start the *OpenSSH SSH Server* service by clicking the *Start the service*.

   3. Setting up SSH public key authentication

      1. Method 1

         Add authorized public keys to `%programdata%/ssh/administrators_authorized_keys`

      2. Method 2

         Follow a generic guide for [Setting up SSH public key authentication](https://winscp.net/eng/docs/guide_public_key) in *nix OpenSSH server, with the following difference:

         - Create the `.ssh` folder (for the `authorized_keys` file) in your Windows account profile folder (typically in `C:\Users\username\.ssh`).

      - For permissions to the `.ssh` folder and the `authorized_keys` file, what matters are Windows ACL permissions, not simple *nix permissions. Set the ACL so that the respective Windows account is the owner of the folder and the file and is the only account that has a write access to them. The account that runs *OpenSSH SSH Server* service (typically `SYSTEM` or `sshd`) needs to have read access to the file.

         - Though, with the default Win32-OpenSSH configuration there is an exception set in `sshd_config` for accounts in `Administrators` group. For these, the server uses a different location for the authorized keys file: `%ALLUSERSPROFILE%\ssh\administrators_authorized_keys` (i.e. typically `C:\ProgramData\ssh\administrators_authorized_keys`).

   4. Default SSH Shell

      1. Create a CMD file

         ```
         cat << EOF > /c/msys64/sshd-default-shell.cmd
         C:\msys64\msys2_shell.cmd -defterm -here -no-start -mingw64 -shell zsh
         EOF
         ```

      2. Add the following content to Windows Registry > `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\OpenSSH` in the string value `DefaultShell`

         ```
         C:\msys64\sshd-default-shell.cmd
         ```

3. Swap keys caps lock and left control.

   ```
   Windows Registry Editor Version 5.00

   [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout]
   "Scancode Map"=hex:00,00,00,00,00,00,00,00,03,00,00,00,1d,00,3a,00,3a,00,1d,00,00,00,00,00

   ; Refs:
   ; https://superuser.com/a/1381836
   ```

#### General

1. [Using tab instead of arrow key to scroll in code completion - JetBrains](https://intellij-support.jetbrains.com/hc/en-us/community/posts/8008270395538-Using-tab-instead-of-arrow-key-to-scroll-in-code-completion)
2. [Visual Studio Code: Use tab (instead of arrow keys) to select Intellisense Suggestions?](https://stackoverflow.com/questions/48097507/visual-studio-code-use-tab-instead-of-arrow-keys-to-select-intellisense-sugge)

### Uninstallation

```
cd ~/dotfiles
./uninstall.sh
cd ..
rm -rf dotfiles
```

## Known Issues

1. Neovim cannot be launched properly inside Windows tmux or MinTTY. However, Vim works in these environments. [#6751](https://github.com/neovim/neovim/issues/6751) [#8271](https://github.com/neovim/neovim/pull/8271) [#11112](https://github.com/neovim/neovim/issues/11112)

2. Tmux cannot be launched in Windows Terminal directly. Need to use `script -c tmux /dev/null` as a workaround ([source](https://github.com/csdvrx/sixel-tmux)). [#5132](https://github.com/microsoft/terminal/issues/5132)

3. Windows Terminal 'fontFace' not working for any profile after system reboot. [#3257](https://github.com/microsoft/terminal/issues/3257)
