class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCwdZ2np1LoCQmqjeo/zZR8avs2ef3LXpk+dMtB6aQX7X/JufPn8i5KgjXqRF7MyZhBE0z6Qr2O9nWKSS8RUk6HP252el1MzAbEpXGtU6IOZp+ssF1rnmvQpH9KwILZdRfUZhZHGry6+OnEm2PN5PvJV1+wKLpLtNVKaz4xBPD89YtBKmInzLbxCExaBcW2osI7Bpy3miyiVF2zWwKRbApVcA/QzxcOl873omZp6ba7rIUooUfUJBDP5vXWOiF8ztfjVvBqqs+dExNUhtZdUVENo5RtBSXJwzX5nS4gySiTMv+XGspNHg1RDb3PTYXd9uQ5UBAQnZEI4WCJhO5RhXSZ',
	}  
