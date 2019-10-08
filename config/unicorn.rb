worker_processes Integer(ENV["WEB_CONCURRENCY"] || 1)
timeout 15
preload_app true
worker_processes 4
listen 'unix:///tmp/nginx.socket', backlog: 1024

before_fork do |server,worker|
    FileUtils.touch('/tmp/app-initialized')
end
