node default {
 file { "/tmp/testmaster.txt":
	owner	=>	root,
	group	=>	root,
	mode	=>	444,
	source	=>	"puppet:///files/test2.txt",
 }
}
node 'puppet-agent.local.pl' {
	include puppetagent
}
# package { 'nginx':
#	ensure	=>	installed,
#}
# file { "/etc/nginx/sites-available/default":
#	owner	=>	root,
#	group	=>	root,
#	mode	=>	664,
#	source	=>	"puppet:///files/default",
# 	require	=>	Package['nginx'],
# }
#
# service { 'nginx':
#	ensure	=>	running,
#	enable	=>	true,
#	hasstatus =>	true,
#	hasrestart =>	true,
#	subscribe  =>	File['/etc/nginx/sites-available/default'],
# }
#
# cron { "run-puppet":
#	command	=>	"/usr/bin/puppet agent --onetime --no-daemonize",
#	minute	=>	['1-59'],
#}
#
# service { "puppet":
#	ensure	=>	stopped,
#	enable	=>	false,
#}

