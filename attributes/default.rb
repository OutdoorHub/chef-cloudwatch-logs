default['cwlogs']['region'] = 'us-east-1'
default['cwlogs']['state_file_dir'] = '/var/awslogs/state'
default['cwlogs']['state_file_name'] = 'agent-state'
default['cwlogs']['logfiles']["#{node['cwlogs']['deployment'].gsub(' ','-').gsub('+','-').squeeze}-messages"] = {
    'datetime_format' => '[%Y-%m-%d %H:%M:%S]',
    'log_group_name' => "#{node['cwlogs']['deployment'].gsub(' ','-').gsub('+','-').squeeze}-messages",
    'file' => '/var/log/messages',
    'log_stream_name' => "#{node['cwlogs']['hostname']}-var-log-messages"
}
