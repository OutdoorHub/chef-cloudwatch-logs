default['cwlogs']['region'] = 'us-east-1'
default['cwlogs']['state_file_dir'] = '/var/awslogs/state'
default['cwlogs']['state_file_name'] = 'agent-state'
#v-l-m
default['cwlogs']['logfiles']["#{node['cwlogs']['deployment'].gsub(' ','-').gsub('+','-').squeeze}-messages"] = {
    'datetime_format' => '[%Y-%m-%d %H:%M:%S]',
    'log_group_name' => "#{node['cwlogs']['deployment'].gsub(' ','-').gsub('+','-').squeeze}-messages",
    'file' => '/var/log/messages',
    'log_stream_name' => "#{node['cwlogs']['hostname']}"
}

#error_log
default['cwlogs']['logfiles']["#{node['cwlogs']['deployment'].gsub(' ','-').gsub('+','-').squeeze}-httpd_error_log"] = {
    'datetime_format' => '[%Y-%m-%d %H:%M:%S]',
    'log_group_name' => "#{node['cwlogs']['deployment'].gsub(' ','-').gsub('+','-').squeeze}-httpd_error_log",
    'file' => '/var/log/httpd/error_log',
    'log_stream_name' => "#{node['cwlogs']['hostname']}"
}
#access_log
default['cwlogs']['logfiles']["#{node['cwlogs']['deployment'].gsub(' ','-').gsub('+','-').squeeze}-httpd_access_log"] = {
    'datetime_format' => '[%Y-%m-%d %H:%M:%S]',
    'log_group_name' => "#{node['cwlogs']['deployment'].gsub(' ','-').gsub('+','-').squeeze}-httpd_access_log",
    'file' => '/var/log/httpd/access_log',
    'log_stream_name' => "#{node['cwlogs']['hostname']}"
}
