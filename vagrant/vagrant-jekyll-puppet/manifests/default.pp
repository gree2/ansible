exec { 'replace sources.list sed 1':
	command => "/bin/sed 's@archive.ubuntu.com@mirrors.163.com@' -i /etc/apt/sources.list"
}

exec { 'replace sources.list sed 2':
	command => "/bin/sed 's@archive.canonical.com@mirrors.163.com@' -i /etc/apt/sources.list",
	require => Exec['replace sources.list sed 1']
}

exec { 'replace sources.list sed 3':
	command => "/bin/sed 's@security.ubuntu.com@mirrors.163.com@' -i /etc/apt/sources.list",
	require => Exec['replace sources.list sed 2']
}

exec { 'apt-get update':
	command => '/usr/bin/apt-get update -y',
	require => Exec['replace sources.list sed 3']
}

package { 'nodejs':
	require => Exec['apt-get update']
}

package { 'lynx-cur':
	require => Exec['apt-get update']
}

package { 'ruby1.9.1-dev':
	require => Exec['apt-get update']
}

exec { 'replace gem sources remove':
	command => '/usr/bin/gem sources --remove https://rubygems.org/',
	require => Package['ruby1.9.1-dev']
}

exec { 'replace gem sources -a':
	command => '/usr/bin/gem sources -a http://ruby.taobao.org/',
	require => Exec['replace gem sources remove']
}

exec { 'replace gem sources -l':
	command => '/usr/bin/gem sources -l',
	require => Exec['replace gem sources -a']
}


exec { 'install jekyll':
	command => '/usr/bin/gem install jekyll',
	require => Exec['replace gem sources -l']
}