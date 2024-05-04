# Cromite Flatpak

## Disclaimer

First of all, please note that this is not an official Flatpak release of [Cromite](https://github.com/uazo/cromite).\
Cromite's developer [uazo](https://github.com/uazo) is looking into [making an official one](https://github.com/uazo/cromite/issues/1053).

In the meantime, if you want to try out Cromite's Flatpak for yourself, you can follow these instructions.

## Installation

First, you need to install `flatpak-builder` on your system.\
It should be available as a package on your Linux distribution.

\
All of the following commands should be run as a regular user (not root).

```bash
flatpak install org.chromium.Chromium.BaseApp/x86_64/23.08

git clone https://github.com/syhlx/cromite-flatpak.git
cd cromite-flatpak

flatpak-builder build-dir org.cromite.cromite.yaml
flatpak-builder --user --install --force-clean build-dir org.cromite.cromite.yaml
```
\
Since Cromite does not yet ship with the `chrome-sandbox` binary, you will have to manually add it to Cromite.\
You can get the binary file from your distribution's Chromium package (or any Chromium-based browser).

If you have Chromium already installed on your system, the file should be located in one of these places (depending on your distro):

```bash
/usr/lib/chromium/chrome-sandbox
/usr/lib64/chromium/chrome-sandbox

/usr/lib/chromium-browser/chrome-sandbox
/usr/lib64/chromium-browser/chrome-sandbox
```
\
You can copy it using this command (change the file path as needed):

```bash
cp -a /usr/lib/chromium/chrome-sandbox ~/.local/share/flatpak/app/org.cromite.cromite/x86_64/master/active/files/cromite/
```
