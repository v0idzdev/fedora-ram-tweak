# Fedora Ram Tweak
This script disables some background services and installs an early OOM tool. I've also written an additional script you can run if your PC has the
CPU of a toaster and the RAM capacity of a goldfish.

This script removes some security services, and the GNOME software utility amongst others. Please do not use this unless you're looking for a last resort. I'm not responsible for anything that goes wrong, you know the risks.

# Install
### Standard Install (Recommended for Most PCs)
This script is relatively easy to install.
```bash
sudo -i && git clone https://github.com/matthewflegg/fedora-ram-tweak
cd fedora-ram-tweak && chmod +x lower-ram.sh
./lower-ram.sh
```
##### Packages that are removed:
> firewalld<br>
> gnome-calendar<br>
> libvirt-daemon<br>
> sssd-* (system security services daemon)<br>

##### Packages that are installed:
> earlyoom

### Standard Install + Additional RAM Reduction (Recommended for Slow PCs)
The following commands will install and run both scripts.
```bash
sudo -i && git clone https://github.com/matthewflegg/fedora-ram-tweak
cd fedora-ram-tweak && chmod +x lower-ram.sh lower-ram-extra.sh
./lower-ram.sh
./lower-ram-extra.sh
```
##### Packages that are removed:
> firewalld<br>
> gnome-calendar<br>
> libvirt-daemon<br>
> sssd-* (system security services daemon)<br>
> abrt* (auto bug reporting tool)<br>
> gnome-software<br>
> PackageKit<br>

##### Packages that are installed:
> earlyoom

##### Packages that are marked:
> fwupd
