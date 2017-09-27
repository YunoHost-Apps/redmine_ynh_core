#!/usr/bin/env puma

application_id = '__APP__'
application_path = '__FINALPATH__'
directory application_path
environment 'production'
daemonize true
pidfile "#{application_path}/tmp/pids/puma.pid"
state_path "#{application_path}/tmp/pids/puma.state"
stdout_redirect "/var/log/#{application_id}/puma.stdout.log", "/var/log/#{application_id}/puma.stderr.log"
bind "unix://#{application_path}/tmp/sockets/redmine.sock"
