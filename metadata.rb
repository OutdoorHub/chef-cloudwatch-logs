name             'cloudwatch-logs'
maintainer       'Ben Bridts'
maintainer_email 'ben@cloudar.be'
license          'FreeBSD'
description      'Installs and configures AWS CloudWatch Logs'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.4'

%w{ ubuntu debian centos redhat fedora amazon}.each do |os|
  supports os
end

recipe 'cloudwatch-logs::default', 'installs and configures cloudwatch'


attribute 'cwlogs/deployment',
  :display_name => 'Deployment Name',
  :required => "required"

attribute 'cwlogs/hostname',
  :display_name => 'Hostname',
  :required => "required"
