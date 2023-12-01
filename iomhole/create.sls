iomhole_depends:
  qvm.template_installed:
    - name: debian-11-minimal

iomhole-present-id:
  qvm.present:
    - name: sys-iomhole
    - template: debian-11-minimal
    - label: green
    - class: StandaloneVM

iomhole-prefs-id:
  qvm.prefs:
    - name: sys-iomhole
    - memory: 300
    - maxmem: 800
    - vcpus: 2
    - netvm: sys-net
    - provides-network: true

iomhole-features-id:
  qvm.features:
    - name: sys-iomhole
    - disable:
      - service.cups
      - service.cups-browsed

'qvm-volume extend sys-iomhole:private 20G':
  cmd.run
