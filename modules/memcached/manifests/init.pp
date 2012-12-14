class memcached {
 package { "memcached":
	ensure	=> installed,
 }

 file { "/etc/memcached.conf":
	source	=> "puppet:///modules/memcached/memcached.conf",
 }

 service { "memcached":
	ensure	=> running,
	enable	=> true,
	require	=> [ Package["memcache"], File[ "/etc/memcached.conf"] ],
 }
}
