notice ("MODULAR: fuel-plugin-git running")
include git
$git_attr = hiera_hash('fuel-plugin-git',{})

git::config { 'user.name' :
    require => Package['git'],
    value   => $git_attr['git_username'],
}

git::config { 'user.mail' :
    require => Package['git'],
    value   => $git_attr['git_email'],
}
