class lxde::config{
  file { '/etc/xdg/lxsession/LXDE/autostart':
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => 644,
    source => "puppet:///modules/lxde/autostart",
    }
  file { '/home/pi/autostart':
    ensure => 'link',
    target => '/etc/xdg/lxsession/LXDE/autostart',
    }

  file { '/home/pi/ppt':
    ensure  => directory,
    owner   => pi,
    group   => pi,
    mode    => 755,
    }
}
