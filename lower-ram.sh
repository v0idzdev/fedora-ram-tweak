sudo dnf remove \
  firewalld \
  gnome-calendar \
  libvirt-daemon \
  sssd-* \
&& sudo dnf install earlyoom \
&& sudo systemctl enable earlyoom.service \
&& sudo dnf needs-restarting
