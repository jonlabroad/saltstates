default-jre:
  pkg.installed

install python:
  pkg.installed:
    - pkgs:
      - build-essential
      - python-dev
      - python-pip