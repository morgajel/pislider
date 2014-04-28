class vim::config{
  file { '/etc/vimrc':
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => 644,
    source => "puppet:///modules/vim/vimrc",
    require => Class["vim::install"],
    }

}
