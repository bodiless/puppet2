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

