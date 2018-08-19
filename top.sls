base:
  'fplmt':
    - fpl.pkgs
    - fpl.aws
  'G@dev:mcp9808 or G@dev:si7021':
    - i2c
    - aws
    - firewall
  'G@dev:mcp9808':
    - temperature.mcp9808
  'G@dev:si7021':
    - temperature.si7021