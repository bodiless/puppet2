#node default {
#}

#node testingdefault {
#	include hosts
#}
#
#node 'puppet-agent.loca.pl' inherits testingdefault {
#}
#
#node memcached-agent {
#	include memcached
#}
