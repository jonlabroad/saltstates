/home/pi/run_fpl.sh:
  file.managed:
    - source:
      - salt://fpl/files/fplmt/run_fpl.sh
    - makedirs: true
    - mode: 777

/bin/bash -c "/home/pi/run_fpl.sh > /home/pi/fpl_log.txt 2>&1":
  cron.present:
    - user: root
    - minute: '*/5'

cron:
  service.running:
    - reload: true