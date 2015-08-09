execute "sed 's@archive.ubuntu.com@mirrors.163.com@' -i /etc/apt/sources.list"
execute "sed 's@archive.canonical.com@mirrors.163.com@' -i /etc/apt/sources.list"
execute "sed 's@security.ubuntu.com@mirrors.163.com@' -i /etc/apt/sources.list"

execute "apt-get update"

package nodejs
package lynx-cur
package ruby1.9.1-dev

execute "gem sources --remove https://rubygems.org/"
execute "gem sources -a http://ruby.taobao.org/"
execute "gem sources -l"

execute "gem install jekyll"
execute "jekyll --version"
