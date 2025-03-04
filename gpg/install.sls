# vim: set syntax=yaml ts=2 sw=2 sts=2 et :


{% if salt['pillar.get']('update_proxy:caching') %}

/etc/apt/sources.list:
  file.replace:
    - names:
      - /etc/apt/sources.list
      - /etc/apt/sources.list.d/qubes-r4.list
    - pattern: 'https:'
    - repl: 'http://HTTPS/'
    - flags: [ 'IGNORECASE', 'MULTILINE' ]

{% endif %}

installed:
  pkg.installed:
    - pkgs:
      - qubes-gpg-split
      - gnupg
      - keepassxc
