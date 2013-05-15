build-essential:
    pkg.installed

emacs:
    pkg.installed
vim:
    pkg.installed

### Apache Installation ###

apache2:
  pkg:
    - installed
  service:
    - running
  require:
    - pkg: apache2
