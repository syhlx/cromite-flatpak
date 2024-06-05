# Cromite Flatpak

## Disclaimer

Please note that this is not an official Flatpak release of [Cromite](https://github.com/uazo/cromite).\
Cromite's developer [uazo](https://github.com/uazo) is looking into [making an official one](https://github.com/uazo/cromite/issues/1053).

## Installation

First, you need to install `flatpak-builder` on your system.\
It should be available as a package on your Linux distribution.

\
All of the following commands should be run as a regular user (not root).

```bash
flatpak install org.chromium.Chromium.BaseApp/x86_64/23.08

git clone https://github.com/syhlx/cromite-flatpak.git
cd cromite-flatpak

flatpak-builder --user --install --force-clean build-dir org.cromite.cromite.yaml
```
