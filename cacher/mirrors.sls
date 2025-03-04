# vim: set syntax=yaml ts=2 sw=2 sts=2 et :
#
#
#

{% if grains['nodename'] != 'dom0' %}

/etc/apt-cacher-ng/fedora_mirrors:
  file.managed:
    - source:
      - salt://cacher/fedora_mirrors
    - user: root
    - group: root

/etc/apt-cacher-ng/archlx_mirrors:
  file.managed:
    - source:
      - salt://cacher/archlx_mirrors
    - user: root
    - group: root

{% endif %}
