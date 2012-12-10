node 'puppet-agent.local.pl' {
# class nginx {
#
  file { '/tmp/testfile.txt':
	owner	=> root,
	group	=> root,
	mode	=> 644,
	ensure	=> file,
	source	=> "puppet:///files/testfile",
  }
# }
}
node default{
# class nginx {

  file { '/tmp/testfile.txt':
	owner	=> root,
	group	=> root,
	mode	=> 644,
	source	=> "puppet:///files/testfile",
  }
# }
}
