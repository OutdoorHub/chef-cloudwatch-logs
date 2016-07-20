default['cwlogs']['region'] = 'us-east-1'
default['cwlogs']['state_file_dir'] = '/var/awslogs/state'
default['cwlogs']['state_file_name'] = 'agent-state'
default['cwlogs']['logfiles'] = [
  '/var/log/messages',
  '/var/log/httpd/access_log',
  '/var/log/httpd/error_log'
]
