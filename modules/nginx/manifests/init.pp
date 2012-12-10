class nginx {

 file { '/tmp/testfile':
	path	=> '/tmp/testfile',
	ensure	=> present,
	content	=> "Test file from master2",
	source	=> "puppet:///modules/nginx/${conf_file}",
 }

}

node default{
}
node 'puppet-agent.local.pl' {
 file { '/tmp/testfile':
	path	=> '/tmp/testfile',
	ensure	=> present,
	content	=> "Test file from master2",
	source	=> "puppet:///modules/nginx/${conf_file}",
 }


}
