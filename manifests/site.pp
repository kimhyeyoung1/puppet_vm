node 'hyeyoung'{
#  include sys_info
}

nod 'vm01.linuxmaster.com' {
  file {'/tmp/testserver/:
    content => "This is a test server.\n",
  }
}

nod /^vm[0-9]+\.linuxmaster\.com$/ {
}
file {'/tmp/HelloPuppetMaster':
	content => "Hello, puppet master!\n",
}
