node default {
 file { "/tmp/testmaster.txt":
	owner	=>	root,
	group	=>	root,
	mode	=>	644,
	source	=>	"puppet:///files/test2.txt",
 }
}
node 'puppet-agent.local.pl' {
 package { 'nginx':
	ensure	=>	installed,
}
 file { "/etc/nginx/sites-available/default":
	owner	=>	root,
	group	=>	root,
	mode	=>	666,
	source	=>	"puppet:///files/default",
 	require	=>	Package['nginx'],
 }

 service { 'nginx':
	ensure	=>	running,
	enable	=>	true,
	hasstatus =>	true,
	hasrestart =>	true,
	subscribe  =>	File['/etc/nginx/sites-available/default'],
 }

 cron { "run-puppet":
	command	=>	"/usr/bin/puppet agent --onetime --no-daemonize",
	minute	=>	['1-59'],
}

 service { "puppet":
	ensure	=>	stopped,
	enable	=>	false,
}

}

#site.pp

#site.pp

#file { "/etc/sudoers":
#	owner	=>	root,
#	group	=>	root,
#	mode	=>	440,
#}
#
#file { "/etc/test.txt":
#	source	=>	puppet:///
#	owner	=>	root,
#	group	=>	hadrian,
#	mode	=>	555,
#}
#
#
#import "nodes"
