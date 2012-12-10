class hosts {
	file { "/etc/hosts2":
		owner	=>	root,
		group	=>	root,
		mode	=>	644,
		content	=>	template("hosts/hosts.erb"),
	}
}
