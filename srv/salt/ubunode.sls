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

#### File Addition ####
/home/vagrant/saltfile.txt:
  file.managed:
    - source: salt://managedfiles/saltfile.txt
    - user: vagrant
    - group: vagrant
    - mode: 664

