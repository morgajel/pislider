class background::config{
  file { '/home/pi/.config/pcmanfm/LXDE/pcmanfm.conf':
    ensure  => file,
    owner   => pi,
    group   => pi,
    mode    => 444,
    source => "puppet:///modules/background/pcmanfm.conf",
    require => Class["background::install"],
    }
  file { '/home/pi/RPiBackground.png':
    ensure  => file,
    owner   => pi,
    group   => pi,
    mode    => 444,
    source => "puppet:///modules/background/RPiBackground.png",
    require => Class["background::install"],
    }

}
